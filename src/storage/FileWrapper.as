package storage
{
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	public class FileWrapper
	{
		public function FileWrapper()
		{
		}



		public static function deteleFile(fname:String):void
		{
			var file:File=File.applicationStorageDirectory.resolvePath(fname);

			if (file.exists)
			{
				file.deleteFile();
			}
		}
		
		public static function writeLinesToFile(lines:Array , filePath:String):void{
			FileWrapper.deteleFile(filePath);
			
			var file:File = File.applicationStorageDirectory.resolvePath(filePath);;
			var fileStream:FileStream=new FileStream(); // Create our file stream
			fileStream.open(file, FileMode.WRITE);
			fileStream.writeUTFBytes(lines.join(File.lineEnding));
			fileStream.writeUTFBytes(File.lineEnding);
			fileStream.close(); // Clean up and close the file stream			
		}
		public static function readFileInLines(file:File):Array
		{
			var fileStream:FileStream=new FileStream(); // Create our file stream
			fileStream.open(file, FileMode.READ);

			var fileContents:String=fileStream.readUTFBytes(fileStream.bytesAvailable); // Read the contens of the 
			var fileLines:Array=fileContents.split(File.lineEnding);
			fileStream.close(); // Clean up and close the file stream			
			return fileLines;
		}


	}
}