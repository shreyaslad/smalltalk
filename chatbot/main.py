import io 
import json

from snips_nlu import SnipsNLUEngine
from snips_nlu.default_configs import CONFIG_EN

engine = SnipsNLUEngine(config=CONFIG_EN)

'''with io.open("./data/testdata/dataset.json") as f:
    dataset = json.load(f)

engine.fit(dataset)
parsing = engine.parse(u"Hey, lights on in the lounge !")
print(json.dumps(parsing, indent=2))'''

with io.open("./data/dataset.json") as f:
    dataset = json.load(f)

engine.fit(dataset)
parsing = engine.parse(u"What's the weather for sf?")
print(json.dumps(parsing, indent=2))

file = open("./data/output.json", "w")
file.write(json.dumps(parsing, indent=2))