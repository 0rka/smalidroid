import fnmatch
import os
import sqlite3
import operator

call_count = {}

for root, dirnames, filenames in os.walk('./dbs/'):
    for filename in fnmatch.filter(filenames, '*.db'):
        filepath = os.path.join(root, filename)
        conn = sqlite3.connect(filepath)
        cursor = conn.cursor()
        data = cursor.execute('SELECT calling_to FROM methods').fetchall()
        for calling_to in data:
            calls = calling_to[0].split(',')
            for call in calls:
                if call_count.has_key(call):
                    call_count[call] += 1
                else:
                    call_count[call] = 1
        conn.close()

sorted_x = sorted(call_count.items(), key=operator.itemgetter(1))
conn = sqlite3.connect('all_dbs.db')
cursor = conn.cursor()
cursor.execute('''CREATE TABLE methods
                               (id, sum)''')
for method in sorted_x:
    cursor.execute('''INSERT INTO methods
                      VALUES (?, ?)''', (method[0], method[1]))

conn.commit()
conn.close()