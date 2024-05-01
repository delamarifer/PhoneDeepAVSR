#!/bin/bash -l
#SBATCH --qos=normal
#SBATCH -p normal
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dlatorre@mit.edu
#SBATCH --mem=80G
#SBATCH --gres=gpu:4
#SBATCH --constraint=rocky8 
#SBATCH --output=out_clarity.out
#SBATCH --time=2:00:00


source /etc/profile.d/modules.sh
module load openmind/miniconda/3.9.1
module load openmind/git-lfs/2.13.2

source activate /om2/user/dlatorre/AudioVisualSpeechDL/conda_envs/av-speech-8c


python /om2/user/dlatorre/Clarity/deep_avsr/audio_visual/train.py



