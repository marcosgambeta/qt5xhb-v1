$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QGLYPHRUN
#endif

CLASS QTextFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD position
   METHOD length
   METHOD contains
   METHOD charFormat
   METHOD charFormatIndex
   METHOD text
   METHOD glyphRuns

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
QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW1 )
{
  QTextDocumentPrivate * par1 = (QTextDocumentPrivate *) _qt5xhb_itemGetPtr(1);
  QTextFragment * o = new QTextFragment ( par1, PINT(2), PINT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextFragment()
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW2 )
{
  QTextFragment * o = new QTextFragment ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextFragment(const QTextFragment &o)
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW3 )
{
  QTextFragment * o = new QTextFragment ( *PQTEXTFRAGMENT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
//[2]QTextFragment()
//[3]QTextFragment(const QTextFragment &o)

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
  if( ISNUMPAR(3) && ISOBJECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_ISVALID )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int position() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_POSITION )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->position () );
  }
}


/*
int length() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_LENGTH )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->length () );
  }
}


/*
bool contains(int position) const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CONTAINS )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( PINT(1) ) );
  }
}


/*
QTextCharFormat charFormat() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMAT )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
int charFormatIndex() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMATINDEX )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->charFormatIndex () );
  }
}


/*
QString text() const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_TEXT )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}


/*
QList<QGlyphRun> glyphRuns(int from = -1, int length = -1) const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_GLYPHRUNS )
{
  QTextFragment * obj = (QTextFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGlyphRun> list = obj->glyphRuns ( OPINT(1,-1), OPINT(2,-1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGLYPHRUN" );
    #else
    pDynSym = hb_dynsymFindName( "QGLYPHRUN" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGlyphRun *) new QGlyphRun ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$extraMethods

#pragma ENDDUMP
