$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileOpenEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD file
   METHOD openFile
   METHOD url

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

/*
QString file () const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_FILE )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->file () );
  }
}


/*
bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_OPENFILE )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFile  * par1 = (QFile  *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->openFile ( *par1, (QIODevice::OpenMode) hb_parni(2) ) );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_URL )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}



#pragma ENDDUMP
