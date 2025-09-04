from huggingface_hub import snapshot_download
import os
import argparse

def download_models(target_dir=None):
    """
    Download models from HuggingFace hub to specified directory
    
    Args:
        target_dir (str, optional): Target directory for downloads. 
                                  If None, uses current working directory
    """
    # Set repo ID
    repo_id = "nitin19/Wan2.1_I2V"
    
    # Use provided target dir or default to current working directory
    download_dir = target_dir if target_dir else os.getcwd()
    
    # Create target directory if it doesn't exist
    os.makedirs(download_dir, exist_ok=True)
    
    try:
        snapshot_download(
            local_dir=download_dir,
            repo_id=repo_id
        )
        print(f"\nDOWNLOAD COMPLETED to: {download_dir}")
        print("Check folder content for downloaded files")
        
    except Exception as e:
        print(f"Error occurred during download: {str(e)}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Download models from HuggingFace hub')
    parser.add_argument('--dir', type=str, help='Target directory for downloads', default=None)
    
    args = parser.parse_args()
    download_models(args.dir)