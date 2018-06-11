





/** 기본 설정 **/

var TP_DOMAIN    = "https://paytest.treepay.co.th/";
var TP_NUA       = navigator.userAgent;
var isMobile     = false;               // 모바일 여부
var TP_ui_jquery = false;               // UI Jquery
var TP_loadingPop ;
/** 자바스크립트 자동 갱신 처리 - 시작 */
var TP_Script_VERSION = "";
var merchant_logo = "";

try
{
    var pattern = /^[A-Z0-9]+$/;
    var n       = 32;
    var str     = "";

    if(!/^[0-9]+$/.test(n)) n = 0x10;

    for(var i=0; i < n; i++)
    {
        var rnd = Math.round( Math.random() * 1000 );

        if( !pattern.test( String.fromCharCode(rnd) ) )
        {
            n = n+1;
        }
        else
        {
            str += String.fromCharCode(rnd);
        }
    }
    TP_Script_VERSION = str;
}
catch(e){}
/** 자바스크립트 자동 갱신 처리 - 끝 */

/** 모바일 여부 체크 - 시작 */
try
{
    if( TP_NUA.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/) )
    {
        isMobile = true;
    }
}
catch(e){}
/** 모바일 여부 체크 - 끝 */

/*********************************************************************************************************************/
/** jQuery 추가 및 기타 js 파일 추가 *********************************************************************************/
/*********************************************************************************************************************/
document.write( "<script type=\"text/javascript\" src=\"" + TP_DOMAIN + "js/plugin/extends/jquery-1.8.0.js?" +                     "\" charset=\"UTF-8\"></script>" );
document.write( "<script type=\"text/javascript\" src=\"" + TP_DOMAIN + "js/plugin/extends/util.js?"         + TP_Script_VERSION + "\" charset=\"UTF-8\"></script>" );
document.write( "<script type=\"text/javascript\" src=\"" + TP_DOMAIN + "js/plugin/plugin_hub.js?"           + TP_Script_VERSION + "\" charset=\"UTF-8\"></script>" );
/*********************************************************************************************************************/

function TP_Pay_Execute()
{
    var arg = arguments;

    switch( arg.length )
    {
        case 1: //파라미터값이 하나일 경우
            switch( typeof arg[0] )
            {
                case "object":
                    TpTx_Execute(arg[0]);
                break;

                default:
                    alert("TP_Pay_Execute arguments length error");
                break;
            }
        break;

        default:
            alert("TP_Pay_Execute arguments type error");
        break;
    }
}