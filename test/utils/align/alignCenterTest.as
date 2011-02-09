package utils.align
{
    import flash.display.Sprite;

    import mx.core.UIComponent;

    import org.fluint.uiImpersonation.UIImpersonator;
    import org.hamcrest.assertThat;

    import org.hamcrest.object.equalTo;

    public class alignCenterTest
    {

        [Test]
        public function alignCenter_aligns_display_object_centers_x():void
        {
            var item:Sprite = drawSprite(10,10,10,10);
            var target:Sprite = drawSprite(20,20,10,10);
            addItemAndTargetToStage(item, target);

            alignCenter(item, target);

            assertThat(item.x, equalTo(target.x));
        }

        [Test]
        public function alignCenter_aligns_display_object_centers_y():void
        {
            var item:Sprite = drawSprite(10,10,10,10);
            var target:Sprite = drawSprite(20,20,10,10);
            addItemAndTargetToStage(item, target);

            alignCenter(item, target);

            assertThat(item.y, equalTo(target.y));
        }

        private function drawSprite(x:int, y:int, width:int, height:int):Sprite
        {
            var sprite:Sprite = new Sprite();

            sprite.graphics.beginFill(0x000000);
            sprite.graphics.drawRect(0,0,width,height);

            sprite.x = x;
            sprite.y = y;

            return sprite;
        }

        private function addItemAndTargetToStage(item:Sprite, target:Sprite):void
        {
            var uiComponent:UIComponent = new UIComponent();

            UIImpersonator.addChild(uiComponent);
            uiComponent.addChild(item);
            uiComponent.addChild(target);
        }
    }
}