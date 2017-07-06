$header

#include "hbclass.ch"

CLASS QDBusUnixFileDescriptor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD fileDescriptor
   METHOD setFileDescriptor
   METHOD giveFileDescriptor
   METHOD takeFileDescriptor
   METHOD isSupported

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
QDBusUnixFileDescriptor()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEW1 )
{
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusUnixFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEW2 )
{
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEW3 )
{
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor ();
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusUnixFileDescriptor()
//[2]explicit QDBusUnixFileDescriptor(int fileDescriptor)
//[3]QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)

HB_FUNC( QDBUSUNIXFILEDESCRIPTOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQDBUSUNIXFILEDESCRIPTOR(1) )
  {
    HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QDBusUnixFileDescriptor &other)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SWAP )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swap ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISVALID )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int fileDescriptor() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_FILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->fileDescriptor () );
  }
}

/*
void setFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SETFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFileDescriptor ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void giveFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_GIVEFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->giveFileDescriptor ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int takeFileDescriptor()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_TAKEFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->takeFileDescriptor () );
  }
}


/*
static bool isSupported()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISSUPPORTED )
{
  RBOOL( QDBusUnixFileDescriptor::isSupported () );
}



$extraMethods

#pragma ENDDUMP
