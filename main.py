import io
import json
from snips_nlu import SnipsNLUEngine

nlu_engine = SnipsNLUEngine()

with io.open("./chatbot/data/dataset.json") as f:
    sample_dataset = json.load(f)

nlu_engine.fit(sample_dataset)
parsing = nlu_engine.parse(u"weather for dublin california")
print(json.dumps(parsing, indent=2))