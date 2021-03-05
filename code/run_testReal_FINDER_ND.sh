set -e

modelName="FINDER_ND"

prompt="Step1:Building the model of "$modelName""
echo -e "\033[40;37m ${prompt} \033[0m" 
cd "$modelName"
python setup.py build_ext -i
cd ..

#    prompt="Step3:testing the model of "$modelName" by using the synthetic datasets in the paper"
#    echo -e "\033[40;37m ${prompt} \033[0m" 
#    python -u "./"$modelName"/testSynthetic.py"

prompt="Step2:testing the model of "$modelName" by using the real datasets in the paper"
echo -e "\033[40;37m ${prompt} \033[0m" 
python -u "./"$modelName"/testReal.py"

prompt="Program is finished！"
echo -e "\033[40;37m ${prompt} \033[0m" 