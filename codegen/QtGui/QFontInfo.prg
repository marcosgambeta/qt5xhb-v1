$header

#include "hbclass.ch"

CLASS QFontInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bold
   METHOD exactMatch
   METHOD family
   METHOD fixedPitch
   METHOD italic
   METHOD pixelSize
   METHOD pointSize
   METHOD pointSizeF
   METHOD rawMode
   METHOD style
   METHOD styleHint
   METHOD styleName
   METHOD weight

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

/*
QFontInfo ( const QFont & font )
*/
void QFontInfo_new1 ()
{
  QFontInfo * o = new QFontInfo ( *PQFONT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontInfo ( const QFontInfo & fi )
*/
void QFontInfo_new2 ()
{
  QFontInfo * o = new QFontInfo ( *PQFONTINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QFontInfo ( const QFont & font )
//[2]QFontInfo ( const QFontInfo & fi )

HB_FUNC_STATIC( QFONTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    QFontInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool bold () const
*/
HB_FUNC_STATIC( QFONTINFO_BOLD )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->bold () );
  }
}

/*
bool exactMatch () const
*/
HB_FUNC_STATIC( QFONTINFO_EXACTMATCH )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->exactMatch () );
  }
}

/*
QString family () const
*/
HB_FUNC_STATIC( QFONTINFO_FAMILY )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->family () );
  }
}

/*
bool fixedPitch () const
*/
HB_FUNC_STATIC( QFONTINFO_FIXEDPITCH )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->fixedPitch () );
  }
}

/*
bool italic () const
*/
HB_FUNC_STATIC( QFONTINFO_ITALIC )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->italic () );
  }
}

/*
int pixelSize () const
*/
HB_FUNC_STATIC( QFONTINFO_PIXELSIZE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->pixelSize () );
  }
}

/*
int pointSize () const
*/
HB_FUNC_STATIC( QFONTINFO_POINTSIZE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->pointSize () );
  }
}

/*
qreal pointSizeF () const
*/
HB_FUNC_STATIC( QFONTINFO_POINTSIZEF )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->pointSizeF () );
  }
}

/*
bool rawMode () const
*/
HB_FUNC_STATIC( QFONTINFO_RAWMODE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->rawMode () );
  }
}

/*
QFont::Style style () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->style () );
  }
}

/*
QFont::StyleHint styleHint () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLEHINT )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->styleHint () );
  }
}

/*
QString styleName () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLENAME )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->styleName () );
  }
}

/*
int weight () const
*/
HB_FUNC_STATIC( QFONTINFO_WEIGHT )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->weight () );
  }
}

$extraMethods

#pragma ENDDUMP
