$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRAWFONT
#endif

CLASS QGlyphRun

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clear
   METHOD overline
   METHOD rawFont
   METHOD setOverline
   METHOD setRawData
   METHOD setRawFont
   METHOD setStrikeOut
   METHOD setUnderline
   METHOD strikeOut
   METHOD underline

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
QGlyphRun ()
*/
HB_FUNC_STATIC( QGLYPHRUN_NEW1 )
{
  QGlyphRun * o = new QGlyphRun ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGlyphRun ( const QGlyphRun & other )
*/
HB_FUNC_STATIC( QGLYPHRUN_NEW2 )
{
  QGlyphRun * o = new QGlyphRun ( *PQGLYPHRUN(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGlyphRun ()
//[2]QGlyphRun ( const QGlyphRun & other )

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLYPHRUN_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    HB_FUNC_EXEC( QGLYPHRUN_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clear ()
*/
HB_FUNC_STATIC( QGLYPHRUN_CLEAR )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool overline () const
*/
HB_FUNC_STATIC( QGLYPHRUN_OVERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->overline () );
  }
}



/*
QRawFont rawFont () const
*/
HB_FUNC_STATIC( QGLYPHRUN_RAWFONT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRawFont * ptr = new QRawFont( obj->rawFont () );
    _qt5xhb_createReturnClass ( ptr, "QRAWFONT", true );
  }
}



/*
void setOverline ( bool overline )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETOVERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOverline ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setRawData ( const quint32 * glyphIndexArray, const QPointF * glyphPositionArray, int size )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETRAWDATA ) // TODO: corrigir implementacao
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const quint32 * par1 = (const quint32 *) _qt5xhb_itemGetPtr(1);
    const QPointF * par2 = (const QPointF *) _qt5xhb_itemGetPtr(2);
    obj->setRawData ( par1, par2, PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawFont ( const QRawFont & rawFont )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETRAWFONT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRawFont ( *PQRAWFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStrikeOut ( bool strikeOut )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETSTRIKEOUT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStrikeOut ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUnderline ( bool underline )
*/
HB_FUNC_STATIC( QGLYPHRUN_SETUNDERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUnderline ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool strikeOut () const
*/
HB_FUNC_STATIC( QGLYPHRUN_STRIKEOUT )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->strikeOut () );
  }
}


/*
bool underline () const
*/
HB_FUNC_STATIC( QGLYPHRUN_UNDERLINE )
{
  QGlyphRun * obj = (QGlyphRun *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->underline () );
  }
}

$extraMethods

#pragma ENDDUMP
