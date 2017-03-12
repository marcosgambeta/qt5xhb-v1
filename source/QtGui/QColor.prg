/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QColor

   DATA pointer
   DATA class_id INIT Class_Id_QColor
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
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
   METHOD setRgb1
   METHOD setRgb2
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
   METHOD fromRgb1
   METHOD fromRgb2
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

PROCEDURE destroyObject () CLASS QColor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QColor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QColor>
#endif

/*
QColor ()
*/
HB_FUNC_STATIC( QCOLOR_NEW1 )
{
  QColor * o = new QColor (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QColor ( int r, int g, int b, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_NEW2 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = ISNIL(4)? 255 : hb_parni(4);
  QColor * o = new QColor ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QColor ( QRgb color )
*/
HB_FUNC_STATIC( QCOLOR_NEW3 )
{
  QRgb par1 = hb_parni(1);
  QColor * o = new QColor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QColor ( const QString & name )
*/
HB_FUNC_STATIC( QCOLOR_NEW4 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QColor * o = new QColor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QColor ( const char * name )
*/
HB_FUNC_STATIC( QCOLOR_NEW5 )
{
  const char * par1 = hb_parc(1);
  QColor * o = new QColor (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QColor ( const QColor & color )
*/
HB_FUNC_STATIC( QCOLOR_NEW6 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  QColor * o = new QColor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QColor ( Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QCOLOR_NEW7 )
{
  int par1 = hb_parni(1);
  QColor * o = new QColor (  (Qt::GlobalColor) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QColor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


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
    HB_FUNC_EXEC( QCOLOR_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW2 );
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
    HB_FUNC_EXEC( QCOLOR_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOLOR_DELETE )
{
  QColor * obj = (QColor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int alpha () const
*/
HB_FUNC_STATIC( QCOLOR_ALPHA )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alpha (  ) );
  }
}


/*
qreal alphaF () const
*/
HB_FUNC_STATIC( QCOLOR_ALPHAF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->alphaF (  ) );
  }
}


/*
int black () const
*/
HB_FUNC_STATIC( QCOLOR_BLACK )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->black (  ) );
  }
}


/*
qreal blackF () const
*/
HB_FUNC_STATIC( QCOLOR_BLACKF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->blackF (  ) );
  }
}


/*
int blue () const
*/
HB_FUNC_STATIC( QCOLOR_BLUE )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->blue (  ) );
  }
}


/*
qreal blueF () const
*/
HB_FUNC_STATIC( QCOLOR_BLUEF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->blueF (  ) );
  }
}


/*
QColor convertTo ( Spec colorSpec ) const
*/
HB_FUNC_STATIC( QCOLOR_CONVERTTO )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor * ptr = new QColor( obj->convertTo (  (QColor::Spec) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
int cyan () const
*/
HB_FUNC_STATIC( QCOLOR_CYAN )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cyan (  ) );
  }
}


/*
qreal cyanF () const
*/
HB_FUNC_STATIC( QCOLOR_CYANF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->cyanF (  ) );
  }
}


/*
QColor darker ( int factor = 200 ) const
*/
HB_FUNC_STATIC( QCOLOR_DARKER )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->darker ( (int) ISNIL(1)? 200 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
void getCmyk ( int * c, int * m, int * y, int * k, int * a = 0 )
*/
HB_FUNC_STATIC( QCOLOR_GETCMYK )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    int par5;
    obj->getCmyk ( &par1, &par2, &par3, &par4, &par5 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getCmykF ( qreal * c, qreal * m, qreal * y, qreal * k, qreal * a = 0 )
*/
HB_FUNC_STATIC( QCOLOR_GETCMYKF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    qreal par5;
    obj->getCmykF ( &par1, &par2, &par3, &par4, &par5 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
    hb_stornd( par5, 5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHsl ( int * h, int * s, int * l, int * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSL )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getHsl ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHslF ( qreal * h, qreal * s, qreal * l, qreal * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSLF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getHslF ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHsv ( int * h, int * s, int * v, int * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSV )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getHsv ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getHsvF ( qreal * h, qreal * s, qreal * v, qreal * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETHSVF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getHsvF ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getRgb ( int * r, int * g, int * b, int * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETRGB )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getRgb ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getRgbF ( qreal * r, qreal * g, qreal * b, qreal * a = 0 ) const
*/
HB_FUNC_STATIC( QCOLOR_GETRGBF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getRgbF ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int green () const
*/
HB_FUNC_STATIC( QCOLOR_GREEN )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->green (  ) );
  }
}


/*
qreal greenF () const
*/
HB_FUNC_STATIC( QCOLOR_GREENF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->greenF (  ) );
  }
}


/*
int hslHue () const
*/
HB_FUNC_STATIC( QCOLOR_HSLHUE )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hslHue (  ) );
  }
}


/*
qreal hslHueF () const
*/
HB_FUNC_STATIC( QCOLOR_HSLHUEF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->hslHueF (  ) );
  }
}


/*
int hslSaturation () const
*/
HB_FUNC_STATIC( QCOLOR_HSLSATURATION )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hslSaturation (  ) );
  }
}


/*
qreal hslSaturationF () const
*/
HB_FUNC_STATIC( QCOLOR_HSLSATURATIONF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->hslSaturationF (  ) );
  }
}


/*
int hsvHue () const
*/
HB_FUNC_STATIC( QCOLOR_HSVHUE )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hsvHue (  ) );
  }
}


/*
qreal hsvHueF () const
*/
HB_FUNC_STATIC( QCOLOR_HSVHUEF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->hsvHueF (  ) );
  }
}


/*
int hsvSaturation () const
*/
HB_FUNC_STATIC( QCOLOR_HSVSATURATION )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hsvSaturation (  ) );
  }
}


/*
qreal hsvSaturationF () const
*/
HB_FUNC_STATIC( QCOLOR_HSVSATURATIONF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->hsvSaturationF (  ) );
  }
}


/*
int hue () const
*/
HB_FUNC_STATIC( QCOLOR_HUE )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hue (  ) );
  }
}


/*
qreal hueF () const
*/
HB_FUNC_STATIC( QCOLOR_HUEF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->hueF (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QCOLOR_ISVALID )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QColor lighter ( int factor = 150 ) const
*/
HB_FUNC_STATIC( QCOLOR_LIGHTER )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->lighter ( (int) ISNIL(1)? 150 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
int lightness () const
*/
HB_FUNC_STATIC( QCOLOR_LIGHTNESS )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lightness (  ) );
  }
}


/*
qreal lightnessF () const
*/
HB_FUNC_STATIC( QCOLOR_LIGHTNESSF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lightnessF (  ) );
  }
}


/*
int magenta () const
*/
HB_FUNC_STATIC( QCOLOR_MAGENTA )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->magenta (  ) );
  }
}


/*
qreal magentaF () const
*/
HB_FUNC_STATIC( QCOLOR_MAGENTAF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->magentaF (  ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QCOLOR_NAME )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
int red () const
*/
HB_FUNC_STATIC( QCOLOR_RED )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->red (  ) );
  }
}


/*
qreal redF () const
*/
HB_FUNC_STATIC( QCOLOR_REDF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->redF (  ) );
  }
}


/*
QRgb rgb () const
*/
HB_FUNC_STATIC( QCOLOR_RGB )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rgb (  ) );
  }
}


/*
QRgb rgba () const
*/
HB_FUNC_STATIC( QCOLOR_RGBA )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rgba (  ) );
  }
}


/*
int saturation () const
*/
HB_FUNC_STATIC( QCOLOR_SATURATION )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->saturation (  ) );
  }
}


/*
qreal saturationF () const
*/
HB_FUNC_STATIC( QCOLOR_SATURATIONF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->saturationF (  ) );
  }
}


/*
void setAlpha ( int alpha )
*/
HB_FUNC_STATIC( QCOLOR_SETALPHA )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlpha ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlphaF ( qreal alpha )
*/
HB_FUNC_STATIC( QCOLOR_SETALPHAF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setAlphaF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlue ( int blue )
*/
HB_FUNC_STATIC( QCOLOR_SETBLUE )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlue ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlueF ( qreal blue )
*/
HB_FUNC_STATIC( QCOLOR_SETBLUEF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBlueF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCmyk ( int c, int m, int y, int k, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETCMYK )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCmyk ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) ISNIL(5)? 255 : hb_parni(5) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETCMYKF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = ISNIL(5)? 1.0 : hb_parnd(5);
    obj->setCmykF ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGreen ( int green )
*/
HB_FUNC_STATIC( QCOLOR_SETGREEN )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGreen ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGreenF ( qreal green )
*/
HB_FUNC_STATIC( QCOLOR_SETGREENF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setGreenF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHsl ( int h, int s, int l, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSL )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHsl ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 255 : hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSLF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
    obj->setHslF ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHsv ( int h, int s, int v, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSV )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHsv ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 255 : hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETHSVF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
    obj->setHsvF ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNamedColor ( const QString & name )
*/
HB_FUNC_STATIC( QCOLOR_SETNAMEDCOLOR )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setNamedColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRed ( int red )
*/
HB_FUNC_STATIC( QCOLOR_SETRED )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRed ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRedF ( qreal red )
*/
HB_FUNC_STATIC( QCOLOR_SETREDF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRedF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgb ( int r, int g, int b, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_SETRGB1 )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRgb ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 255 : hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRgb ( QRgb rgb )
*/
HB_FUNC_STATIC( QCOLOR_SETRGB2 )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRgb ( (QRgb) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setRgb ( int r, int g, int b, int a = 255 )
//[2]void setRgb ( QRgb rgb )

HB_FUNC_STATIC( QCOLOR_SETRGB )
{
  if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_SETRGB1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_SETRGB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_SETRGBF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
    obj->setRgbF ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgba ( QRgb rgba )
*/
HB_FUNC_STATIC( QCOLOR_SETRGBA )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRgba ( (QRgb) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Spec spec () const
*/
HB_FUNC_STATIC( QCOLOR_SPEC )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->spec (  ) );
  }
}


/*
QColor toCmyk () const
*/
HB_FUNC_STATIC( QCOLOR_TOCMYK )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->toCmyk (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QColor toHsl () const
*/
HB_FUNC_STATIC( QCOLOR_TOHSL )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->toHsl (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QColor toHsv () const
*/
HB_FUNC_STATIC( QCOLOR_TOHSV )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->toHsv (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QColor toRgb () const
*/
HB_FUNC_STATIC( QCOLOR_TORGB )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->toRgb (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
int value () const
*/
HB_FUNC_STATIC( QCOLOR_VALUE )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->value (  ) );
  }
}


/*
qreal valueF () const
*/
HB_FUNC_STATIC( QCOLOR_VALUEF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->valueF (  ) );
  }
}


/*
int yellow () const
*/
HB_FUNC_STATIC( QCOLOR_YELLOW )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->yellow (  ) );
  }
}


/*
qreal yellowF () const
*/
HB_FUNC_STATIC( QCOLOR_YELLOWF )
{
  QColor * obj = (QColor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->yellowF (  ) );
  }
}



/*
static QStringList colorNames ()
*/
HB_FUNC_STATIC( QCOLOR_COLORNAMES )
{
  QStringList strl = QColor::colorNames (  );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}


/*
static QColor fromCmyk ( int c, int m, int y, int k, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMCMYK )
{
  QColor * ptr = new QColor( QColor::fromCmyk ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) ISNIL(5)? 255 : hb_parni(5) ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static QColor fromCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMCMYKF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  qreal par5 = ISNIL(5)? 1.0 : hb_parnd(5);
  QColor * ptr = new QColor( QColor::fromCmykF ( par1, par2, par3, par4, par5 ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static QColor fromHsl ( int h, int s, int l, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSL )
{
  QColor * ptr = new QColor( QColor::fromHsl ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 255 : hb_parni(4) ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static QColor fromHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSLF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
  QColor * ptr = new QColor( QColor::fromHslF ( par1, par2, par3, par4 ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static QColor fromHsv ( int h, int s, int v, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSV )
{
  QColor * ptr = new QColor( QColor::fromHsv ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 255 : hb_parni(4) ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static QColor fromHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMHSVF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
  QColor * ptr = new QColor( QColor::fromHsvF ( par1, par2, par3, par4 ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static QColor fromRgb ( QRgb rgb )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGB1 )
{
  QColor * ptr = new QColor( QColor::fromRgb ( (QRgb) hb_parni(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}

/*
static QColor fromRgb ( int r, int g, int b, int a = 255 )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGB2 )
{
  QColor * ptr = new QColor( QColor::fromRgb ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 255 : hb_parni(4) ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


//[1]QColor fromRgb ( QRgb rgb )
//[2]QColor fromRgb ( int r, int g, int b, int a = 255 )

HB_FUNC_STATIC( QCOLOR_FROMRGB )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_FROMRGB1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOLOR_FROMRGB2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QColor fromRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGBF )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = ISNIL(4)? 1.0 : hb_parnd(4);
  QColor * ptr = new QColor( QColor::fromRgbF ( par1, par2, par3, par4 ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static QColor fromRgba ( QRgb rgba )
*/
HB_FUNC_STATIC( QCOLOR_FROMRGBA )
{
  QColor * ptr = new QColor( QColor::fromRgba ( (QRgb) hb_parni(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}


/*
static bool isValidColor ( const QString & name )
*/
HB_FUNC_STATIC( QCOLOR_ISVALIDCOLOR )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QColor::isValidColor ( par1 ) );
}



/*
int qAlpha ( QRgb rgba )
*/
HB_FUNC( QALPHA )
{
  hb_retni( qAlpha ( (QRgb) hb_parni(1) ) );
}

/*
int qBlue ( QRgb rgb )
*/
HB_FUNC( QBLUE )
{
  hb_retni( qBlue ( (QRgb) hb_parni(1) ) );
}

/*
int qGray ( int r, int g, int b )
*/
HB_FUNC( QGRAY1 )
{
  hb_retni( qGray ( hb_parni(1), hb_parni(2), hb_parni(3) ) );
}

/*
int qGray ( QRgb rgb )
*/
HB_FUNC( QGRAY2 )
{
  hb_retni( qGray ( (QRgb) hb_parni(1) ) );
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

/*
int qGreen ( QRgb rgb )
*/
HB_FUNC( QGREEN )
{
  hb_retni( qGreen ( (QRgb) hb_parni(1) ) );
}

/*
int qRed ( QRgb rgb )
*/
HB_FUNC( QRED )
{
  hb_retni( qRed ( (QRgb) hb_parni(1) ) );
}

/*
QRgb qRgb ( int r, int g, int b )
*/
HB_FUNC( QRGB )
{
  hb_retni( qRgb ( hb_parni(1), hb_parni(2), hb_parni(3) ) );
}

/*
QRgb qRgba ( int r, int g, int b, int a )
*/
HB_FUNC( QRGBA )
{
  hb_retni( qRgba ( hb_parni(1), hb_parni(2), hb_parni(3), hb_parni(4) ) );
}


HB_FUNC_STATIC( QCOLOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QCOLOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOLOR_NEWFROM );
}

HB_FUNC_STATIC( QCOLOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOLOR_NEWFROM );
}

HB_FUNC_STATIC( QCOLOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOLOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
