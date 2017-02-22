/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTDOCUMENT

CLASS QSyntaxHighlighter INHERIT QObject

   DATA class_id INIT Class_Id_QSyntaxHighlighter
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD setDocument
   METHOD document
   METHOD rehighlight
   METHOD rehighlightBlock
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSyntaxHighlighter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSyntaxHighlighter>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSyntaxHighlighter>
#endif
#endif


//[1]QSyntaxHighlighter(QObject *parent)
//[2]QSyntaxHighlighter(QTextDocument *parent)

// TODO: implementar reconhecimento de parâmetros

HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_NEW )
{
}

HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
void setDocument(QTextDocument *doc)
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_SETDOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * par1 = (QTextDocument *) _qtxhb_itemGetPtr(1);
    obj->setDocument ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextDocument *document() const
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_DOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
void rehighlight()
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->rehighlight (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void rehighlightBlock(const QTextBlock &block)
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHTBLOCK )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * par1 = (QTextBlock *) _qtxhb_itemGetPtr(1);
    obj->rehighlightBlock ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
