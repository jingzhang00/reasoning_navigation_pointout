# import subprocess
# import os
# import tempfile

# original_path = os.getcwd()
# folder_path = '/home/user/exchange/ssy236_project/rearrange_ws/src/world_percept_assig3/prolog'
# os.chdir(folder_path)

# # 创建一个临时 Prolog 脚本文件
# with tempfile.NamedTemporaryFile('w', delete=False, suffix='.pl') as tmp_file:
#     tmp_file.write(":- use_module(instance_utils).\n")
#     tmp_file.write(":- get_property('http://www.chalmers.se/ontologies/objects_ontology.owl#Coke', 'http://www.chalmers.se/ontologies/objects_ontology.owl#isOn', Range), print(Range), nl, halt.\n")

# # 运行这个 Prolog 脚本
# proc = subprocess.Popen(['swipl', tmp_file.name], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
# stdout, stderr = proc.communicate()

# print("STDOUT:", stdout)
# print("STDERR:", stderr)

# os.remove(tmp_file.name)  # 删除临时文件
# os.chdir(original_path)

from pyswip import Prolog

prolog = Prolog()
prolog.consult('src/world_percept_assig3/prolog/instance_utils.pl')
# query = "get_property('Beverage', isOn, Range)"



prolog = Prolog()
prolog.consult('src/world_percept_assig3/prolog/instance_utils.pl')

# individual = "Beverage"
individual = "Furniture"
query = f"get_subclass('{individual}', Class)"
for solution in prolog.query(query):
    print(f"Sub class of {individual}: {solution['Class']}")


