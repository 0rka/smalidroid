import sqlite3

class SmaliDatabase(object):
    def __init__(self):
        pass

    def set_db_path(self, db_path):
        self.conn = sqlite3.connect(db_path)
        self.cursor = self.conn.cursor()

    def _create_method_table(self):
        # TODO remove redundant called_from creation and usage
        self.cursor.execute('''CREATE TABLE methods
                               (id, class_name, method_name, parameters, return_value, calling_to, called_from, data)''')

    def create_tables(self):
        self._create_method_table()

    def add_method(self, id, class_name, method_name, parameters, return_value, calling_to='', called_from='', data=''):
        self.cursor.execute('''INSERT INTO methods
                               VALUES (?, ?, ?, ?, ?, ?, ?, ?)''', (id,
                                                                    class_name,
                                                                    method_name,
                                                                    parameters,
                                                                    return_value,
                                                                    calling_to,
                                                                    called_from,
                                                                    data))

    def update_method_called_from(self, id, value):
        """
        params: id = the called_from value to be appended
                value = the id of the row to be appended to
        updates the row with id='value' with appending the column 'called_from' with 'id' value
        """

        self.cursor.execute('''UPDATE methods SET called_from =
                               (SELECT called_from FROM methods WHERE id IN (?))
                               || ? || "," WHERE id IN (?)''', (value,
                                                                id,
                                                                value))

    def get_calling_to(self):
        self.cursor.execute('SELECT id, calling_to FROM methods')
        return self.cursor.fetchall()

    def get_called_from_method(self, method):
        self.cursor.execute('''SELECT id FROM methods where calling_to LIKE "%" || ? || "%"''', (method,))
        return self.cursor.fetchall()

    def get_calling_to_with_pattern(self, pattern):
        self.cursor.execute('''SELECT id, calling_to FROM methods WHERE calling_to LIKE "%" || ? || "%"''', (pattern,))
        return self.cursor.fetchall()

    def get_id_with_pattern(self, pattern):
        self.cursor.execute('''SELECT id FROM methods WHERE id LIKE "%" || ? || "%"''', (pattern,))
        return self.cursor.fetchall()

    def get_method_data(self, id):
        self.cursor.execute('''SELECT data FROM methods WHERE id IN (?)''', (id,))
        return self.cursor.fetchall()
