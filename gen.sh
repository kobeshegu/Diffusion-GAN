#cd diffusion-stylegan2 

#srun -p digitalcity -N1 --quotatype=auto --job-name=ffhq_cka --gres=gpu:1 --cpus-per-task=16 \
#python generate.py --outdir=/mnt/petrelfs/yangmengping/generate_data/lsunchurch/diffusion_sg2 --seeds=0-49999 \
#                   --network=/mnt/petrelfs/yangmengping/ckpt/diffusion-gan/diffusion-stylegan2-lsun-church.pkl \

#cd ../diffusion-projected-gan
cd diffusion-projected-gan
srun -p digitalcity -N1 --quotatype=auto --job-name=ffhq_cka --gres=gpu:1 --cpus-per-task=16 \
python gen_images.py --outdir=/mnt/petrelfs/yangmengping/generate_data/lsunchurch/diffusion_proj --seeds=0-49999 \
                   --network=/mnt/petrelfs/yangmengping/ckpt/diffusion-gan/diffusion-projectedgan-lsun-church.pkl \

