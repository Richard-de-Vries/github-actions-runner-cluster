
cd cert-manager
../helmfile.ps1 apply
cd ../

cd github-actions-runner-controller
../helmfile.ps1 apply
cd ../

$app_id = Read-Host -Prompt 'Input your github app id'
$installation_id = Read-Host -Prompt 'Input the installation id'
$private_key_loc = Read-Host -Prompt 'Input the location of the private key'

kubectl create secret generic controller-manager -n actions --from-literal=github_app_id=$app_id --from-literal=github_app_installation_id=$installation_id --from-file=github_app_private_key=$private_key_loc

kubectl rollout restart -n actions deployment actions-runner-controller

