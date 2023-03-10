#!/bin/sh

#................................................. gcp-org ..............................................#


case $1 in

    gcp-org)
    cd gcp-env1/gcp-org/org-template/
    export GOOGLE_APPLICATION_CREDENTIALS=/home/amit_kumar/eastern-lodge-374307-5eedac2e2288.json
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Initialization Started, Please wait......!!!!"
    terraform init
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    JSON_FILE="../input-json-file/org.tfvars.json"
    PLAN_FILE="../plan-file/org-tf-plan.json"
    echo "Terraform Plan Initiated, Please wait......!!!!"
    terraform plan -var-file=$JSON_FILE -out=$PLAN_FILE
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Apply is going to start, Please wait......!!!!"
    echo "terraform apply $PLAN_FILE"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo "Answer: $ans"
    if [ $ans == "y" ]
    then
    terraform apply $PLAN_FILE
    else
    echo "Answer is 'n', Hence, exiting."
    fi
    ;;

#................................................ gcp-devops ............................................#

    gcp-devops)
    cd gcp-env1/gcp-devops/devops-template/
    export GOOGLE_APPLICATION_CREDENTIALS=/home/amit_kumar/eastern-lodge-374307-5eedac2e2288.json
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Initialization Started, Please wait......!!!!"
    terraform init
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    JSON_FILE="../input-json-file/devops.tfvars.json"
    PLAN_FILE="../plan-file/devops-tf-plan.json"
    echo "Terraform Plan Initiated, Please wait......!!!!"
    terraform plan -var-file=$JSON_FILE -out=$PLAN_FILE
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Apply is going to start, Please wait......!!!!"
    echo "terraform apply $PLAN_FILE"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
    else
        echo "Answer is 'n', Hence, exiting."
    fi
    ;;

#................................................ gcp-demand ............................................#

    gcp-demand)
    cd gcp-env1/gcp-demand/demand-template/
    export GOOGLE_APPLICATION_CREDENTIALS=/home/amit_kumar/eastern-lodge-374307-5eedac2e2288.json
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Initialization Started, Please wait......!!!!"
    terraform init
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    JSON_FILE="../input-json-file/demand.tfvars.json"
    PLAN_FILE="../plan-file/demand-tf-plan.json"
    echo "Terraform Plan Initiated, Please wait......!!!!"
    terraform plan -var-file=$JSON_FILE -out=$PLAN_FILE
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Apply is going to start, Please wait......!!!!"
    echo "terraform apply $PLAN_FILE"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
    else
        echo "Answer is 'n', Hence, exiting."
    fi
    ;;

#.......................................... gcp-demand-resources ........................................#

    gcp-demand-resources)
    cd gcp-env1/gcp-demand-resources/resources-template/
    export GOOGLE_APPLICATION_CREDENTIALS=/home/amit_kumar/eastern-lodge-374307-5eedac2e2288.json
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Initialization Started, Please wait......!!!!"
    terraform init
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    JSON_FILE="../input-json-file/resources.tfvars.json"
    PLAN_FILE="../plan-file/resources-tf-plan.json"
    echo "Terraform Plan Initiated, Please wait......!!!!"
    terraform plan -var-file=$JSON_FILE -out=$PLAN_FILE
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Apply is going to start, Please wait......!!!!"
    echo "terraform apply $PLAN_FILE"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
    else
        echo "Answer is 'n', Hence, exiting."
    fi
    ;;

#........................................... gcp-terraform-mgmt .........................................#

    gcp-terraform-mgmt)
    cd gcp-env1/gcp-terraform-mgmt/mgmt-template/
    export GOOGLE_APPLICATION_CREDENTIALS=/home/amit_kumar/eastern-lodge-374307-5eedac2e2288.json
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Initialization Started, Please wait......!!!!"
    terraform init
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    JSON_FILE="../input-json-file/mgmt.tfvars.json"
    PLAN_FILE="../plan-file/mgmt-tf-plan.json"
    echo "Terraform Plan Initiated, Please wait......!!!!"
    terraform plan -var-file=$JSON_FILE -out=$PLAN_FILE
    echo "------------------------------------------------------------------------------"
    echo "------------------------------------------------------------------------------"
    echo "Terraform Apply is going to start, Please wait......!!!!"
    echo "terraform apply $PLAN_FILE"
    read -p "Your infrastructure is getting changed. Are you Sure ? y or n: " ans
    echo "Answer: $ans"
    if [ $ans == "y" ]
    then
        terraform apply $PLAN_FILE
    else
        echo "Answer is 'n', Hence, exiting."
    fi
    ;;
*)
echo "ERROR :: Baseline $1 is invalid"
exit 1
;;
esac