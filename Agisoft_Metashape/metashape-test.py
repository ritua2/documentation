import Metashape
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--file", help='Full Path to Project File (monument.psz)')
args = vars(parser.parse_args())

label = 'Chunk 1'

doc = Metashape.app.document
doc.open(path = args['file'])
chunk = doc.chunk

if label == doc.chunks[0].label:
  print("Success: Able to confirm chunk label from sample project.")
else:
  print("Error: Unable to confirm chunk label from sample project.")

doc.clear()
