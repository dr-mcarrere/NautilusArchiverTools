# NautilusArchiverTools

## Description

NautilusArchiverTools provides quick access to compression and decompression utilities from within the Ubuntu Nautilus file manager (checked on 22.04.5 LTS), supporting popular formats such as .zip, .7z, .tar.gz, and .zst for both individual files and directories.

## Dependencies

Install the following packages from the apt repository:

```bash
sudo apt install zenity p7zip-full zip unzip tar zstd
```

## Installation

Need to modify the permission for the installer file:

```bash
chmod +x Install.sh
```

And execute it:

```bash
bash Install.sh
```

You should have this output:

```bash
Directory created: $HOME/.local/share/nautilus/scripts
Scripts copied to $HOME/.local/share/nautilus/scripts
Installation complete!
```

## Usage

You can use the scripts for compression and extraction directly from Nautilus. Below are the available scripts:

### Compression Scripts

- **CompressHereTo7z**: Compress selected files or folders into a `.7z` archive at the current location.
- **CompressHereToTar**: Compress selected files or folders into a `.tar` archive at the current location.
- **CompressHereToZip**: Compress selected files or folders into a `.zip` archive at the current location.
- **CompressHereToZst**: Compress selected files or folders into a `.zst` archive at the current location.
- **CompressTo**: Open a dialog to select the compression format, specify the archive name, choose the output directory, and select the number of CPU cores to use for compression.

### Extraction Scripts

- **ExtractHere**: Extract selected `.7z`, `.zip`, `.tar.zst`, or `.tar` files in the current location.
- **ExtractTo**: Open a dialog to choose the output directory for extracting selected `.7z`, `.zip`, `.tar.zst`, or `.tar` files.

### How to Use

#### Compression

1. **Select Files/Folders**: Open Nautilus and select the files or folders you want to compress.
2. **Right-Click**: Right-click on the selected items.
3. **Choose Compression Option**: Select one of the following options:
   - **Compress Here to 7z**
   - **Compress Here to Tar**
   - **Compress Here to Zip**
   - **Compress Here to Zst**
   - **Compress To** (this option will prompt you to specify the name of the archive, choose the compression format, the number of CPU cores to use, and the output directory)

   **Example for Compress Here**:
   - If you select `Documents` and choose **Compress Here to Zip**, the output might be named like `Documents_20231017_153045.zip`, including the date and time of compression.

#### Extraction

1. **Select Archive**: Right-click on the archive file you want to extract.
2. **Choose Extraction Option**: Select one of the following options:
   - **Extract Here**
   - **Extract To** (this option will prompt you to choose the output directory)

   **Example for Extract To**:
   - If you have an archive named `Documents_20231017_153045.zip`, and you choose **Extract To**, you'll be prompted to select a directory where the contents will be extracted.

#### Note

For the **Compress To** option, you can specify a custom name for the archive when prompted.
