package RandomDisplayer
{
	import model.CardsModel;
	
	import mx.collections.ArrayCollection;
	
	public class Displayer
	{
		public function Displayer()
		{
		}
		
		private var model:CardsModel  = CardsModel.getInstance();
		
		public static function display(list:ArrayCollection):void{
			var index:int = Math.abs((Math.random() * list.length));
			CardsModel.getInstance().setDisplay(list[index],index);
		}
		
	}
}