# RCDNet Installation
This is the installation, training and validating guide for RCDNet in the paper "A Model-driven Deep Neural Network  for Single Image Rain Removal (CVPR2020)" 
[Hong Wang](https://hongwang01.github.io/), Qi Xie, Qian Zhao, and [Deyu Meng](http://gr.xjtu.edu.cn/web/dymeng) [[PDF]](http://openaccess.thecvf.com/content_CVPR_2020/papers/Wang_A_Model-Driven_Deep_Neural_Network_for_Single_Image_Rain_Removal_CVPR_2020_paper.pdf) [[Supplementary Material]](http://openaccess.thecvf.com/content_CVPR_2020/supplemental/Wang_A_Model-Driven_Deep_CVPR_2020_supplemental.pdf) 


## Installation
Run the script below to install (Conda):
```
conda create -n rcdnet python=3.6.0
conda activate rcdnet
conda install -y pytorch=0.4.1 cudatoolkit=10.0 torchvision -c pytorch
conda install h5py opencv
pip install scikit-image==0.17.2 pytorch-msssim==0.2.1 scipy==1.1.0
```

## Synthetic Dataset  
### Synthetic datasets
To train and evaluate the models, please download training and testing datasets (Rain100H, Rain100L, Rain1400) from 
https://drive.google.com/file/d/1Q0hv7HQTT8iC5jHNb9lVrwI6yCNu1SI1/view?usp=sharing
and place the unzipped folders into the 'for_syn/data' folder.

## Training
###  For Synthetic Dataset 
Configure the arguments in the `train.sh` and run the commands below:
```
$ cd ./RCDNet_code/for_syn/src/ 
$ bash train.sh
```
**Note that:  For custom datasets, the image must have `.png` suffix


## Testing
### For Synthetic Dataset
Execute
```
$ cd ./RCDNet_code/for_syn/src/
$ bash test.sh
```
**Note that: --data_range  1-#training pairs/1-#testing pairs. The command (-- data_range 1-200/1-100) above is set based on Rain100L (200 training paris and 100 testing pairs).*

The derained results are saved in the folder "./for_syn/experiment/...", where the image name "norain-*LR.png", "norain-*HR.png" , "norain-*SR.png" means rainy image, groundtruth, and restored background, respectively. 
