import io
import json
from snips_nlu import SnipsNLUEngine

nlu_engine = SnipsNLUEngine()

with open("./chatbot/data/input.json") as input_file:
    input_dict = json.load(input_file)

input = input_dict['input']

with io.open("./chatbot/data/dataset.json") as f:
    sample_dataset = json.load(f)

nlu_engine.fit(sample_dataset)
parsing = nlu_engine.parse(u"%s" % input)

file = open("./chatbot/data/output.json", "w")
file.write(json.dumps(parsing, indent=2))