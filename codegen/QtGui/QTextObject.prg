$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTPRIVATE
#endif

CLASS QTextObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD format
   METHOD formatIndex
   METHOD document
   METHOD objectIndex
   METHOD docHandle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextFormat format() const
*/
HB_FUNC_STATIC( QTEXTOBJECT_FORMAT )
{
  QTextObject * obj = (QTextObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFORMAT" );
  }
}


/*
int formatIndex() const
*/
HB_FUNC_STATIC( QTEXTOBJECT_FORMATINDEX )
{
  QTextObject * obj = (QTextObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->formatIndex () );
  }
}


/*
QTextDocument *document() const
*/
HB_FUNC_STATIC( QTEXTOBJECT_DOCUMENT )
{
  QTextObject * obj = (QTextObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
int objectIndex() const
*/
HB_FUNC_STATIC( QTEXTOBJECT_OBJECTINDEX )
{
  QTextObject * obj = (QTextObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->objectIndex () );
  }
}


/*
QTextDocumentPrivate *docHandle() const
*/
HB_FUNC_STATIC( QTEXTOBJECT_DOCHANDLE )
{
  QTextObject * obj = (QTextObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentPrivate * ptr = obj->docHandle ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTPRIVATE" );
  }
}



#pragma ENDDUMP
