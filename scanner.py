class SmaliScanner(object):
    def __init__(self, smali_database):
        self.db = smali_database

    def scan_for_all(self):
        print 'Scanning for vulnerabilities'
        self.scan_for_directory_traversal()
        self.scan_for_ssl_mitm()

    def scan_for_directory_traversal(self):
        # TODO add java.zip.ZipFile to the unzip pattern
        # TODO add recognition to methods called %unzip% and scan them too

        print 'Scanning for possible directory traversals'
        calling_to_rows = self.db.get_calling_to_with_pattern('->unzip')

        for calling_to_row in calling_to_rows:
            unzip_sum = 0
            getabspath_sum = 0
            try:
                calling_to_methods = calling_to_row[1].split(',')
                for index, calling_to_method in enumerate(calling_to_methods):
                    if '->unzip' in calling_to_method.lower():
                        print '%s method could be has unzip call, please check for directory traversal' % (calling_to_row[0])
                        unzip_sum = unzip_sum + 1
                    if '->getabsolutepath' in calling_to_method.lower():
                        getabspath_sum = getabspath_sum + 1
                        # TODO think of a better algorithm to detect possible directory traversals
                        # if getabspath_sum < unzip_sum:
                            # print '%s method might be vuln to directory traversal due to unzip > getabsolutepath' % (calling_to_row[0])

            except IndexError:
                pass

    def scan_for_ssl_mitm(self):
        print 'Scanning for ssl cerrificate check override'
        id_rows = self.db.get_id_with_pattern('->checkClientTrusted')
        for id_row in id_rows:
            try:
                print '%s method might be vuln to SSL mitm due to overriding checkClientTrusted' % (id_row[0])
            except IndexError:
                pass

        id_rows = self.db.get_id_with_pattern('->checkServerTrusted')
        for id_row in id_rows:
            try:
                print '%s method might be vuln to SSL mitm due to overriding checkServerTrusted' % (id_row[0])
            except IndexError:
                pass


