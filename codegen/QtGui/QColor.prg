$header

#include "hbclass.ch"

CLASS QColor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new7
   METHOD new
   METHOD delete
   METHOD alpha
   METHOD alphaF
   METHOD black
   METHOD blackF
   METHOD blue
   METHOD blueF
   METHOD convertTo
   METHOD cyan
   METHOD cyanF
   METHOD darker
   METHOD getCmyk
   METHOD getCmykF
   METHOD getHsl
   METHOD getHslF
   METHOD getHsv
   METHOD getHsvF
   METHOD getRgb
   METHOD getRgbF
   METHOD green
   METHOD greenF
   METHOD hslHue
   METHOD hslHueF
   METHOD hslSaturation
   METHOD hslSaturationF
   METHOD hsvHue
   METHOD hsvHueF
   METHOD hsvSaturation
   METHOD hsvSaturationF
   METHOD hue
   METHOD hueF
   METHOD isValid
   METHOD lighter
   METHOD lightness
   METHOD lightnessF
   METHOD magenta
   METHOD magentaF
   METHOD name
   METHOD red
   METHOD redF
   METHOD rgb
   METHOD rgba
   METHOD saturation
   METHOD saturationF
   METHOD setAlpha
   METHOD setAlphaF
   METHOD setBlue
   METHOD setBlueF
   METHOD setCmyk
   METHOD setCmykF
   METHOD setGreen
   METHOD setGreenF
   METHOD setHsl
   METHOD setHslF
   METHOD setHsv
   METHOD setHsvF
   METHOD setNamedColor
   METHOD setRed
   METHOD setRedF
   METHOD setRgb
   METHOD setRgbF
   METHOD setRgba
   METHOD spec
   METHOD toCmyk
   METHOD toHsl
   METHOD toHsv
   METHOD toRgb
   METHOD value
   METHOD valueF
   METHOD yellow
   METHOD yellowF
   METHOD colorNames
   METHOD fromCmyk
   METHOD fromCmykF
   METHOD fromHsl
   METHOD fromHslF
   METHOD fromHsv
   METHOD fromHsvF
   METHOD fromRgb
   METHOD fromRgbF
   METHOD fromRgba
   METHOD isValidColor

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QColor ()
$internalContructor=|new1|

$prototype=QColor ( int r, int g, int b, int a = 255 )
$internalContructor=|new2|int,int,int,int=255

$prototype=QColor ( QRgb color )
HB_FUNC_STATIC( QCOLOR_NEW3 )
{
  QRgb par1 = hb_parni(1);
  QColor * o = new QColor ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

$prototype=QColor ( const QString & name )
HB_FUNC_STATIC( QCOLOR_NEW4 )
{
  QColor * o = new QColor ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

$prototype=QColor ( const char * name )
HB_FUNC_STATIC( QCOLOR_NEW5 )
{
  QColor * o = new QColor ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

$prototype=QColor ( const QColor & color )
$internalConstructor=|new6|const QColor &

$prototype=QColor ( Qt::GlobalColor color )
HB_FUNC_STATIC( QCOLOR_NEW7 )
{
  QColor * o = new QColor ( (Qt::GlobalColor) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

// TODO: resolver conflitos: [3] e [4] - [4] e [5]
//[1]QColor ()
//[2]QColor ( int r, int g, int b, int a = 255 )
//[3]QColor ( QRgb color )
//[4]QColor ( const QString & name )
//[5]QColor ( const char * name )
//[6]QColor ( const QColor & color )
//[7]QColor ( Qt::GlobalColor color )

HB_FUNC_STATIC( QCOLOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QColor_new1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QColor_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQCOLOR(1) )
  {
    QColor_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int alpha () const
$method=|int|alpha|

$prototype=qreal alphaF () const
$method=|qreal|alphaF|

$prototype=int black () const
$method=|int|black|

$prototype=qreal blackF () const
$method=|qreal|blackF|

$prototype=int blue () const
$method=|int|blue|

$prototype=qreal blueF () const
$method=|qreal|blueF|

$prototype=QColor convertTo ( Spec colorSpec ) const
$method=|QColor|convertTo|QColor::Spec

$prototype=int cyan () const
$method=|int|cyan|

$prototype=qreal cyanF () const
$method=|qreal|cyanF|

$prototype=QColor darker ( int factor = 200 ) const
$method=|QColor|darker|int=200

$prototype=void getCmyk ( int * c, int * m, int * y, int * k, int * a = 0 )
$method=|void|getCmyk|int *,int *,int *,int *,int *=0

$prototype=void getCmykF ( qreal * c, qreal * m, qreal * y, qreal * k, qreal * a = 0 )
$method=|void|getCmykF|qreal *,qreal *,qreal *,qreal *,qreal *=0

$prototype=void getHsl ( int * h, int * s, int * l, int * a = 0 ) const
$method=|void|getHsl|int *,int *,int *,int *=0

$prototype=void getHslF ( qreal * h, qreal * s, qreal * l, qreal * a = 0 ) const
$method=|void|getHslF|qreal *,qreal *,qreal *,qreal *=0

$prototype=void getHsv ( int * h, int * s, int * v, int * a = 0 ) const
$method=|void|getHsv|int *,int *,int *,int *=0

$prototype=void getHsvF ( qreal * h, qreal * s, qreal * v, qreal * a = 0 ) const
$method=|void|getHsvF|qreal *,qreal *,qreal *,qreal *=0

$prototype=void getRgb ( int * r, int * g, int * b, int * a = 0 ) const
$method=|void|getRgb|int *,int *,int *,int *=0

$prototype=void getRgbF ( qreal * r, qreal * g, qreal * b, qreal * a = 0 ) const
$method=|void|getRgbF|qreal *,qreal *,qreal *,qreal *=0

$prototype=int green () const
$method=|int|green|

$prototype=qreal greenF () const
$method=|qreal|greenF|

$prototype=int hslHue () const
$method=|int|hslHue|

$prototype=qreal hslHueF () const
$method=|qreal|hslHueF|

$prototype=int hslSaturation () const
$method=|int|hslSaturation|

$prototype=qreal hslSaturationF () const
$method=|qreal|hslSaturationF|

$prototype=int hsvHue () const
$method=|int|hsvHue|

$prototype=qreal hsvHueF () const
$method=|qreal|hsvHueF|

$prototype=int hsvSaturation () const
$method=|int|hsvSaturation|

$prototype=qreal hsvSaturationF () const
$method=|qreal|hsvSaturationF|

$prototype=int hue () const
$method=|int|hue|

$prototype=qreal hueF () const
$method=|qreal|hueF|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QColor lighter ( int factor = 150 ) const
$method=|QColor|lighter|int=150

$prototype=int lightness () const
$method=|int|lightness|

$prototype=qreal lightnessF () const
$method=|qreal|lightnessF|

$prototype=int magenta () const
$method=|int|magenta|

$prototype=qreal magentaF () const
$method=|qreal|magentaF|

$prototype=QString name () const
$method=|QString|name|

$prototype=int red () const
$method=|int|red|

$prototype=qreal redF () const
$method=|qreal|redF|

$prototype=QRgb rgb () const
$method=|QRgb|rgb|

$prototype=QRgb rgba () const
$method=|QRgb|rgba|

$prototype=int saturation () const
$method=|int|saturation|

$prototype=qreal saturationF () const
$method=|qreal|saturationF|

$prototype=void setAlpha ( int alpha )
$method=|void|setAlpha|int

$prototype=void setAlphaF ( qreal alpha )
$method=|void|setAlphaF|qreal

$prototype=void setBlue ( int blue )
$method=|void|setBlue|int

$prototype=void setBlueF ( qreal blue )
$method=|void|setBlueF|qreal

$prototype=void setCmyk ( int c, int m, int y, int k, int a = 255 )
$method=|void|setCmyk|int,int,int,int,int=255

$prototype=void setCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
$method=|void|setCmykF|qreal,qreal,qreal,qreal,qreal=1.0

$prototype=void setGreen ( int green )
$method=|void|setGreen|int

$prototype=void setGreenF ( qreal green )
$method=|void|setGreenF|qreal

$prototype=void setHsl ( int h, int s, int l, int a = 255 )
$method=|void|setHsl|int,int,int,int=255

$prototype=void setHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
$method=|void|setHslF|qreal,qreal,qreal,qreal=1.0

$prototype=void setHsv ( int h, int s, int v, int a = 255 )
$method=|void|setHsv|int,int,int,int=255

$prototype=void setHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
$method=|void|setHsvF|qreal,qreal,qreal,qreal=1.0

$prototype=void setNamedColor ( const QString & name )
$method=|void|setNamedColor|const QString &

$prototype=void setRed ( int red )
$method=|void|setRed|int

$prototype=void setRedF ( qreal red )
$method=|void|setRedF|qreal

$prototype=void setRgb ( int r, int g, int b, int a = 255 )
$internalMethod=|void|setRgb,setRgb1|int,int,int,int=255

$prototype=void setRgb ( QRgb rgb )
$internalMethod=|void|setRgb,setRgb2|QRgb

//[1]void setRgb ( int r, int g, int b, int a = 255 )
//[2]void setRgb ( QRgb rgb )

HB_FUNC_STATIC( QCOLOR_SETRGB )
{
  if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QColor_setRgb1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColor_setRgb2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
$method=|void|setRgbF|qreal,qreal,qreal,qreal=1.0

$prototype=void setRgba ( QRgb rgba )
$method=|void|setRgba|QRgb

$prototype=Spec spec () const
$method=|QColor::Spec|spec|

$prototype=QColor toCmyk () const
$method=|QColor|toCmyk|

$prototype=QColor toHsl () const
$method=|QColor|toHsl|

$prototype=QColor toHsv () const
$method=|QColor|toHsv|

$prototype=QColor toRgb () const
$method=|QColor|toRgb|

$prototype=int value () const
$method=|int|value|

$prototype=qreal valueF () const
$method=|qreal|valueF|

$prototype=int yellow () const
$method=|int|yellow|

$prototype=qreal yellowF () const
$method=|qreal|yellowF|

$prototype=static QStringList colorNames ()
$staticMethod=|QStringList|colorNames|

$prototype=static QColor fromCmyk ( int c, int m, int y, int k, int a = 255 )
$staticMethod=|QColor|fromCmyk|int,int,int,int,int=255

$prototype=static QColor fromCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
$staticMethod=|QColor|fromCmykF|qreal,qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromHsl ( int h, int s, int l, int a = 255 )
$staticMethod=|QColor|fromHsl|int,int,int,int=255

$prototype=static QColor fromHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
$staticMethod=|QColor|fromHslF|qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromHsv ( int h, int s, int v, int a = 255 )
$staticMethod=|QColor|fromHsv|int,int,int,int=255

$prototype=static QColor fromHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
$staticMethod=|QColor|fromHsvF|qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromRgb ( QRgb rgb )
$internalStaticMethod=|QColor|fromRgb,fromRgb1|QRgb

$prototype=static QColor fromRgb ( int r, int g, int b, int a = 255 )
$internalStaticMethod=|QColor|fromRgb,fromRgb2|int,int,int,int=255

//[1]QColor fromRgb ( QRgb rgb )
//[2]QColor fromRgb ( int r, int g, int b, int a = 255 )

HB_FUNC_STATIC( QCOLOR_FROMRGB )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColor_fromRgb1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QColor_fromRgb2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QColor fromRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
$staticMethod=|QColor|fromRgbF|qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromRgba ( QRgb rgba )
$staticMethod=|QColor|fromRgba|QRgb

$prototype=static bool isValidColor ( const QString & name )
$staticMethod=|bool|isValidColor|const QString &

%%
%% Funcoes
%%

$prototype=int qAlpha ( QRgb rgba )
HB_FUNC( QALPHA )
{
  if( ISNUM(1) )
  {
    RINT( qAlpha ( (QRgb) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int qBlue ( QRgb rgb )
HB_FUNC( QBLUE )
{
  if( ISNUM(1) )
  {
    RINT( qBlue ( (QRgb) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int qGray ( int r, int g, int b )
HB_FUNC( QGRAY1 )
{
  if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    RINT( qGray ( hb_parni(1), hb_parni(2), hb_parni(3) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int qGray ( QRgb rgb )
HB_FUNC( QGRAY2 )
{
  if( ISNUM(1) )
  {
    RINT( qGray ( (QRgb) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

//[1]int qGray ( int r, int g, int b )
//[2]int qGray ( QRgb rgb )

HB_FUNC( QGRAY )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGRAY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAY2 );
  }
}

$prototype=int qGreen ( QRgb rgb )
HB_FUNC( QGREEN )
{
  if( ISNUM(1) )
  {
    RINT( qGreen ( (QRgb) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int qRed ( QRgb rgb )
HB_FUNC( QRED )
{
  if( ISNUM(1) )
  {
    RINT( qRed ( (QRgb) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRgb qRgb ( int r, int g, int b )
HB_FUNC( QRGB )
{
  if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    hb_retni( qRgb ( hb_parni(1), hb_parni(2), hb_parni(3) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRgb qRgba ( int r, int g, int b, int a )
HB_FUNC( QRGBA )
{
  if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    hb_retni( qRgba ( hb_parni(1), hb_parni(2), hb_parni(3), hb_parni(4) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

/*
QVariant toVariant ()
*/
void QColor_toVariant1 ()
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QColor>( *obj );
    _qt5xhb_createReturnClass ( variant, "QVARIANT", true );
  }
}

/*
static QVariant toVariant ( const QColor & )
*/
void QColor_toVariant2 ()
{
  QColor * color = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QColor>( *color );
  _qt5xhb_createReturnClass ( variant, "QVARIANT", true );
}

//[1]QVariant toVariant ()
//[2]static QVariant toVariant ( const QColor & )

HB_FUNC_STATIC( QCOLOR_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QColor_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQCOLOR(1) )
  {
    QColor_toVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QColor fromVariant ( const QVariant & )
*/
HB_FUNC_STATIC( QCOLOR_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QColor * color = new QColor( variant->value<QColor>() );
    _qt5xhb_createReturnClass ( color, "QCOLOR", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
