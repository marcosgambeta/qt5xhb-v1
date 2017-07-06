$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
#endif

CLASS QSyntaxHighlighter INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setDocument
   METHOD document
   METHOD rehighlight
   METHOD rehighlightBlock

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes


//[1]QSyntaxHighlighter(QObject *parent)
//[2]QSyntaxHighlighter(QTextDocument *parent)

// TODO: implementar reconhecimento de parâmetros

HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_NEW )
{
}

$deleteMethod

/*
void setDocument(QTextDocument *doc)
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_SETDOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
    obj->setDocument ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextDocument *document() const
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_DOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
void rehighlight()
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->rehighlight ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void rehighlightBlock(const QTextBlock &block)
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHTBLOCK )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->rehighlightBlock ( *PQTEXTBLOCK(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
