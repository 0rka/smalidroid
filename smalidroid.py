from parser import *
from database import *
from scanner import *
import argparse
import graphviz

class SmaliDroid(object):
    def __init__(self, args):
        self.graph = graphviz.Graph(format='svg')
        self.args = args
        self.smali_db = SmaliDatabase()
        self.smali_parser = SmaliParser(smali_dir=self.args.smali_sources, smali_database=self.smali_db, graph=self.graph)
        self.smali_scanner = SmaliScanner(smali_database=self.smali_db)

        if self.args.db_write:
            if not self.args.smali_sources:
                print 'no smali_sources argument. exiting.'
                return

            self.smali_db.set_db_path(self.args.db_write)
            self.smali_db.create_tables()
            self.smali_parser.parse_smali_files()

        elif self.args.db_read:
            self.smali_db.set_db_path(self.args.db_read)

        if self.args.reverse_method:
            self.build_called_from_method(self.args.reverse_method)

        if self.args.scan:
            self.scan_for_vulns()

        self.smali_db.conn.close()

    def build_called_from_method(self, method):
        # TODO merge with build_reverse_flowchart
        self.smali_parser.get_method_callers(method)
        self.graph.render(filename='img/%s' % (self.args.reverse_method))
        self.graph.view()

    def scan_for_vulns(self):
        self.smali_scanner.scan_for_all()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    # TODO change the parameters so they would make some sense
    parser.add_argument('smali_sources', nargs='?',
                        help="The directory path of the Smali sources to be examined")
    parser.add_argument('-w', dest='db_write',
                        help='Write an SQLite file to this destination, can not be used with -r option')
    parser.add_argument('-r', dest='db_read',
                        help='Read an existing SQLite file from this destination, overrides -w option')
    parser.add_argument('-s', '--scan', action='store_true',
                        help='Scans the Smali code for possible vulnerabilities')
    parser.add_argument('--reversemethod', dest='reverse_method',
                        help='List a reverse flowchart until the method is ran')
    args = parser.parse_args()

    smali_droid = SmaliDroid(args)

