$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
#endif

CLASS QDataStream

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD device
   METHOD setDevice
   METHOD unsetDevice
   METHOD atEnd
   METHOD status
   METHOD setStatus
   METHOD resetStatus
   METHOD floatingPointPrecision
   METHOD setFloatingPointPrecision
   METHOD byteOrder
   METHOD setByteOrder
   METHOD version
   METHOD setVersion
   METHOD readBytes
   METHOD readRawData
   METHOD writeBytes
   METHOD writeRawData
   METHOD skipRawData

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
QDataStream()
*/
$internalConstructor=|new1|

/*
QDataStream(QIODevice *)
*/
$internalConstructor=|new2|QIODevice *

/*
QDataStream(QByteArray *, QIODevice::OpenMode flags)
*/
$internalConstructor=|new3|QByteArray *,QIODevice::OpenMode

/*
QDataStream(const QByteArray &)
*/
$internalConstructor=|new4|const QByteArray &

//[1]QDataStream()
//[2]QDataStream(QIODevice *)
//[3]QDataStream(QByteArray *, QIODevice::OpenMode flags)
//[4]QDataStream(const QByteArray &)

HB_FUNC_STATIC( QDATASTREAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDataStream_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDataStream_new2();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QDataStream_new3();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QDataStream_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QIODevice *device() const
*/
$method=|QIODevice *|device|

/*
void setDevice(QIODevice *)
*/
$method=|void|setDevice|QIODevice *

/*
void unsetDevice()
*/
$method=|void|unsetDevice|

/*
bool atEnd() const
*/
$method=|bool|atEnd|

/*
Status status() const
*/
$method=|QDataStream::Status|QDataStream::status|

/*
void setStatus(Status status)
*/
$method=|void|setStatus|QDataStream::Status

/*
void resetStatus()
*/
$method=|void|resetStatus|

/*
FloatingPointPrecision floatingPointPrecision() const
*/
$method=|QDataStream::FloatingPointPrecision|floatingPointPrecision|

/*
void setFloatingPointPrecision(FloatingPointPrecision precision)
*/
$method=|void|setFloatingPointPrecision|QDataStream::FloatingPointPrecision

/*
ByteOrder byteOrder() const
*/
$method=|QDataStream::ByteOrder|byteOrder|

/*
void setByteOrder(ByteOrder)
*/
$method=|void|setByteOrder|QDataStream::ByteOrder

/*
int version() const
*/
$method=|int|version|

/*
void setVersion(int)
*/
$method=|void|setVersion|int

/*
QDataStream &readBytes(char *&, uint &len) // TODO: revisar e corrigir implementacao do metodo
*/
HB_FUNC_STATIC( QDATASTREAM_READBYTES )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISPOINTER(1) && ISNUM(2) )
    {
      char * * par1 = (char * *) _qt5xhb_itemGetPtr(1);
      uint  * par2 = (uint  *) _qt5xhb_itemGetPtr(2);
      QDataStream * ptr = &obj->readBytes ( *par1, *par2 );
      _qt5xhb_createReturnClass ( ptr, "QDATASTREAM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int readRawData(char *, int len)
*/
HB_FUNC_STATIC( QDATASTREAM_READRAWDATA )
{
  QDataStream * obj = (QDataStream *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      char * par1 = (char *) _qt5xhb_itemGetPtr(1); // TODO: corrigir
      RINT( obj->readRawData ( par1, PINT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDataStream &writeBytes(const char *, uint len)
*/
$method=|QDataStream &|writeBytes|const char *,uint

/*
int writeRawData(const char *, int len)
*/
$method=|int|writeRawData|const char *,int

/*
int skipRawData(int len)
*/
$method=|int|skipRawData|int

$extraMethods

#pragma ENDDUMP
