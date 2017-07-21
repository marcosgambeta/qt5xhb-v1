$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTLAYOUT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTLIST
REQUEST QTEXTBLOCKUSERDATA
REQUEST QTEXTDOCUMENTPRIVATE
#endif

CLASS QTextBlock

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
   METHOD layout
   METHOD clearLayout
   METHOD blockFormat
   METHOD blockFormatIndex
   METHOD charFormat
   METHOD charFormatIndex
   METHOD textDirection
   METHOD text
   METHOD document
   METHOD textList
   METHOD userData
   METHOD setUserData
   METHOD userState
   METHOD setUserState
   METHOD revision
   METHOD setRevision
   METHOD isVisible
   METHOD setVisible
   METHOD blockNumber
   METHOD firstLineNumber
   METHOD setLineCount
   METHOD lineCount
   METHOD next
   METHOD previous
   METHOD docHandle
   METHOD fragmentIndex

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
QTextBlock(QTextDocumentPrivate *priv, int b)
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW1 )
{
  QTextDocumentPrivate * par1 = (QTextDocumentPrivate *) _qt5xhb_itemGetPtr(1);
  QTextBlock * o = new QTextBlock ( par1, PINT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextBlock()
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW2 )
{
  QTextBlock * o = new QTextBlock ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextBlock(const QTextBlock &o)
*/
HB_FUNC_STATIC( QTEXTBLOCK_NEW3 )
{
  QTextBlock * o = new QTextBlock ( *PQTEXTBLOCK(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextBlock(QTextDocumentPrivate *priv, int b)
//[2]QTextBlock()
//[3]QTextBlock(const QTextBlock &o)

HB_FUNC_STATIC( QTEXTBLOCK_NEW )
{
  if( ISNUMPAR(2) && ISOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTBLOCK_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTBLOCK_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    HB_FUNC_EXEC( QTEXTBLOCK_NEW3 );
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
$method=|bool|isValid|

/*
int position() const
*/
$method=|int|position|

/*
int length() const
*/
$method=|int|length|

/*
bool contains(int position) const
*/
$method=|bool|contains|int

/*
QTextLayout *layout() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_LAYOUT )
{
  QTextBlock * obj = (QTextBlock *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLayout * ptr = obj->layout ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTLAYOUT" );
  }
}

/*
void clearLayout()
*/
$method=|void|clearLayout|

/*
QTextBlockFormat blockFormat() const
*/
$method=|QTextBlockFormat|blockFormat|

/*
int blockFormatIndex() const
*/
$method=|int|blockFormatIndex|

/*
QTextCharFormat charFormat() const
*/
$method=|QTextCharFormat|charFormat|

/*
int charFormatIndex() const
*/
$method=|int|charFormatIndex|

/*
Qt::LayoutDirection textDirection() const
*/
$method=|Qt::LayoutDirection|textDirection|

/*
QString text() const
*/
$method=|QString|text|

/*
const QTextDocument *document() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_DOCUMENT )
{
  QTextBlock * obj = (QTextBlock *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTextDocument * ptr = obj->document ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
QTextList *textList() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_TEXTLIST )
{
  QTextBlock * obj = (QTextBlock *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextList * ptr = obj->textList ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}

/*
QTextBlockUserData *userData() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_USERDATA )
{
  QTextBlock * obj = (QTextBlock *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockUserData * ptr = obj->userData ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCKUSERDATA" );
  }
}

/*
void setUserData(QTextBlockUserData *data)
*/
$method=|void|setUserData|QTextBlockUserData *

/*
int userState() const
*/
$method=|int|userState|

/*
void setUserState(int state)
*/
$method=|void|setUserState|int

/*
int revision() const
*/
$method=|int|revision|

/*
void setRevision(int rev)
*/
$method=|void|setRevision|int

/*
bool isVisible() const
*/
$method=|bool|isVisible|

/*
void setVisible(bool visible)
*/
$method=|void|setVisible|bool

/*
int blockNumber() const
*/
$method=|int|blockNumber|

/*
int firstLineNumber() const
*/
$method=|int|firstLineNumber|

/*
void setLineCount(int count)
*/
$method=|void|setLineCount|int

/*
int lineCount() const
*/
$method=|int|lineCount|

/*
QTextBlock next() const
*/
$method=|QTextBlock|next|

/*
QTextBlock previous() const
*/
$method=|QTextBlock|previous|

/*
QTextDocumentPrivate *docHandle() const
*/
HB_FUNC_STATIC( QTEXTBLOCK_DOCHANDLE )
{
  QTextBlock * obj = (QTextBlock *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentPrivate * ptr = obj->docHandle ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTPRIVATE" );
  }
}

/*
int fragmentIndex() const
*/
$method=|int|fragmentIndex|

$extraMethods

#pragma ENDDUMP
