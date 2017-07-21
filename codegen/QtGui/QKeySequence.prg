$header

#include "hbclass.ch"

CLASS QKeySequence

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD count
   METHOD isEmpty
   METHOD matches
   METHOD toString
   METHOD fromString
   METHOD keyBindings
   METHOD mnemonic

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes

#include <QList>

/*
QKeySequence ()
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW1 )
{
  QKeySequence * o = new QKeySequence ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QKeySequence ( const QString & key )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW2 )
{
  QKeySequence * o = new QKeySequence ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QKeySequence ( const QString & key, SequenceFormat format )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW3 )
{
  QKeySequence * o = new QKeySequence ( PQSTRING(1), (QKeySequence::SequenceFormat) hb_parni(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW4 )
{
  QKeySequence * o = new QKeySequence ( PINT(1), OPINT(2,0), OPINT(3,0), OPINT(4,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QKeySequence ( const QKeySequence & keysequence )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW5 )
{
  QKeySequence * o = new QKeySequence ( *PQKEYSEQUENCE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QKeySequence ( StandardKey key )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW6 )
{
  QKeySequence * o = new QKeySequence ( (QKeySequence::StandardKey) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QKeySequence ()
//[2]QKeySequence ( const QString & key )
//[3]QKeySequence ( const QString & key, SequenceFormat format )
//[4]QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
//[5]QKeySequence ( const QKeySequence & keysequence )
//[6]QKeySequence ( StandardKey key )

HB_FUNC_STATIC( QKEYSEQUENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW3 );
  }
  else if( ISBETWEEN(1,4) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQKEYSEQUENCE(1) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
  /* TODO: [6] QKeySequence ( StandardKey key ) */
}

$deleteMethod

/*
uint count () const
*/
$method=|uint|count|

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
SequenceMatch matches ( const QKeySequence & seq ) const
*/
$method=|QKeySequence::SequenceMatch|matches|const QKeySequence &

/*
QString toString ( SequenceFormat format = PortableText ) const
*/
$method=|QString|toString|QKeySequence::SequenceFormat=QKeySequence::PortableText

/*
static QKeySequence fromString ( const QString & str, SequenceFormat format = PortableText )
*/
$staticMethod=|QKeySequence|fromString|const QString &,QKeySequence::SequenceFormat=QKeySequence::PortableText

/*
static QList<QKeySequence> keyBindings ( StandardKey key )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_KEYBINDINGS )
{
  QList<QKeySequence> list = QKeySequence::keyBindings ( (QKeySequence::StandardKey) hb_parni(1) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QKEYSEQUENCE" );
  #else
  pDynSym = hb_dynsymFindName( "QKEYSEQUENCE" );
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
      hb_itemPutPtr( pItem, (QKeySequence *) new QKeySequence ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QKeySequence mnemonic ( const QString & text )
*/
$staticMethod=|QKeySequence|mnemonic|const QString &

$extraMethods

#pragma ENDDUMP
