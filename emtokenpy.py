"""Python wrapper for quntoken.
"""


import sys
from quntoken.quntoken import tokenize


class EmTokenPy:
    def __init__(self, source_fields=None, target_fields=None):

        # Field names for e-magyar TSV
        if source_fields is None:
            source_fields = set()

        if target_fields is None:
            target_fields = []

        self.source_fields = source_fields
        self.target_fields = target_fields

    def process_sentence(self, sen, field_names):
        sen = '\n'.join([x[0] for x in sen])
        cmd = ['preproc', 'snt', 'sntcorr', 'sntcorr', 'token', 'convtsv']
        out, err = tokenize(cmd, sen)
        if err:
            print(err, sys.stderr)
        res = [[x] for x in out.split('\n')]
        return res

    def prepare_fields(self, field_names):
        return field_names
