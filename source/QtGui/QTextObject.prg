/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTPRIVATE
#endif

CLASS QTextObject INHERIT QObject

   //DATA class_id INIT Class_Id_QTextObject
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD format
   METHOD formatIndex
   METHOD document
   METHOD objectIndex
   METHOD docHandle

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextObject>
#endif



/*
QTextFormat format() const
*/
HB_FUNC_STATIC( QTEXTOBJECT_FORMAT )
{
  QTextObject * obj = (QTextObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format (  ) );
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
    hb_retni( obj->formatIndex (  ) );
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
    QTextDocument * ptr = obj->document (  );
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
    hb_retni( obj->objectIndex (  ) );
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
    QTextDocumentPrivate * ptr = obj->docHandle (  );
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTPRIVATE" );
  }
}



#pragma ENDDUMP
