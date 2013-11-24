

class net.einspunktnull.banner.BannerClickButton
{

	public static function addClickability(flash:MovieClip,btnMC:MovieClip)
	{
		
		if (!flash.clickTAG)
		{
			if (flash.clicktag)flash.clickTAG = flash.clicktag;
			else if (flash.clickTag)flash.clickTAG = flash.clickTag;
			else if (flash.ClickTag)flash.clickTAG = flash.ClickTag;
			else if (flash.CLICKTAG)flash.clickTAG = flash.CLICKTAG;
			else if (flash.ClickTAG)flash.clickTAG = flash.ClickTag;
		}

		if (!flash.clickTARGET)
		{
			if (flash.clicktarget)flash.clickTARGET = flash.clicktarget;
			else if (flash.clickTarget)flash.clickTARGET = flash.clickTarget;
			else if (flash.ClickTarget)flash.clickTARGET = flash.ClickTarget;
			else if (flash.CLICKTARGET)flash.clickTARGET = flash.CLICKTARGET;
			else if (flash.ClickTARGET)flash.clickTARGET = flash.ClickTARGET;
			else flash.clickTARGET = "_blank";
		}

		btnMC.onRelease = function () {
			getURL(flash.clickTAG,flash.clickTARGET);
		};
	}

}