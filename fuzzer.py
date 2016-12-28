class SmaliFuzzing(object):
    def __init__(self, smali_parser, smali_database):
        self.parser = smali_parser
        self.db = smali_database

    def build_intent_fuzzing(self):
        pattern = 'getIntent'
        intent_methods = self.db.get_calling_to_with_pattern(pattern)
        for intent_method in intent_methods:
            self.parser.analyze_method_data()
            data = self.db.get_method_data(intent_method[0])
            self.parser.analyze_method_pattern_flow(content=data[0], pattern=pattern)
