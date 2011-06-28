package model
{
	[Bindable]
	public class CardsModel
	{
		private var _displayLabel:String = "Hello";
		private var _displayIndex:Number = -1;
		
		private static var _instance:CardsModel;
		
		public function get displayLabel():String{
			return _displayLabel;
		}
		
		public function get displayIndex():Number{
			return _displayIndex;
		}
		
		private function set displayLabel(value:String):void
		{
			_displayLabel = value;
		}
		
		private function set displayIndex(value:Number):void{
			if(isNaN(value)){
				value = -1;
			}
			_displayIndex = value;
		}
		public static function getInstance():CardsModel{
			if(_instance == null){
				_instance = new CardsModel();
			}
		return _instance;	
		}
		
		public function setDisplay(label:String , index:Number):void
		{
			displayIndex = index;
			displayLabel = label
		}
	}
}