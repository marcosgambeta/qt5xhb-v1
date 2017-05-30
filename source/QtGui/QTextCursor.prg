/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENTFRAGMENT
REQUEST QTEXTBLOCK
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTLIST
REQUEST QTEXTTABLE
REQUEST QTEXTFRAME
REQUEST QTEXTDOCUMENT
#endif

CLASS QTextCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new4
   METHOD new5
   METHOD new7
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD setPosition
   METHOD position
   METHOD positionInBlock
   METHOD anchor
   METHOD insertText1
   METHOD insertText2
   METHOD movePosition
   METHOD visualNavigation
   METHOD setVisualNavigation
   METHOD setVerticalMovementX
   METHOD verticalMovementX
   METHOD setKeepPositionOnInsert
   METHOD keepPositionOnInsert
   METHOD deleteChar
   METHOD deletePreviousChar
   METHOD select
   METHOD hasSelection
   METHOD hasComplexSelection
   METHOD removeSelectedText
   METHOD clearSelection
   METHOD selectionStart
   METHOD selectionEnd
   METHOD selectedText
   METHOD selection
   METHOD selectedTableCells
   METHOD block
   METHOD charFormat
   METHOD setCharFormat
   METHOD mergeCharFormat
   METHOD blockFormat
   METHOD setBlockFormat
   METHOD mergeBlockFormat
   METHOD blockCharFormat
   METHOD setBlockCharFormat
   METHOD mergeBlockCharFormat
   METHOD atBlockStart
   METHOD atBlockEnd
   METHOD atStart
   METHOD atEnd
   METHOD insertBlock1
   METHOD insertBlock2
   METHOD insertBlock3
   METHOD insertList1
   METHOD insertList2
   METHOD createList1
   METHOD createList2
   METHOD currentList
   METHOD insertTable1
   METHOD insertTable2
   METHOD currentTable
   METHOD insertFrame
   METHOD currentFrame
   METHOD insertFragment
   METHOD insertHtml
   METHOD insertImage1
   METHOD insertImage2
   METHOD insertImage3
   METHOD insertImage4
   METHOD beginEditBlock
   METHOD joinPreviousEditBlock
   METHOD endEditBlock
   METHOD isCopyOf
   METHOD blockNumber
   METHOD columnNumber
   METHOD document

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextCursor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextCursor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextCursor>
#endif

#include <QTextDocumentFragment>
#include <QTextBlock>

/*
QTextCursor()
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW1 )
{
  QTextCursor * o = new QTextCursor ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextCursor(QTextDocument *document)
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW2 )
{
  QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
  QTextCursor * o = new QTextCursor ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextCursor(QTextFrame *frame)
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW4 )
{
  QTextFrame * par1 = (QTextFrame *) _qt5xhb_itemGetPtr(1);
  QTextCursor * o = new QTextCursor ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextCursor(const QTextBlock &block)
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW5 )
{
  QTextBlock * par1 = (QTextBlock *) _qt5xhb_itemGetPtr(1);
  QTextCursor * o = new QTextCursor ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextCursor(const QTextCursor &cursor)
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW7 )
{
  QTextCursor * o = new QTextCursor ();
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QTextCursor()
//[2]QTextCursor(QTextDocument *document)
//[3]QTextCursor(QTextDocumentPrivate *p, int pos)
//[4]QTextCursor(QTextFrame *frame)
//[5]QTextCursor(const QTextBlock &block)
//[6]QTextCursor(QTextCursorPrivate *d)
//[7]QTextCursor(const QTextCursor &cursor)

// TODO: resolver conflitos

HB_FUNC_STATIC( QTEXTCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW2 );
  }
  //else if( ISNUMPAR(2) && ISOBJECT(1) && ISNUM(2) )
  //{
  //  HB_FUNC_EXEC( QTEXTCURSOR_NEW3 );
  //}
  else if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW5 );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QTEXTCURSOR_NEW6 );
  //}
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_DELETE )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
void swap(QTextCursor &other)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SWAP )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ISNULL )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull () );
  }
}


/*
void setPosition(int pos, MoveMode mode = MoveAnchor)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETPOSITION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
    obj->setPosition ( PINT(1),  (QTextCursor::MoveMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int position() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_POSITION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position () );
  }
}


/*
int positionInBlock() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_POSITIONINBLOCK )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->positionInBlock () );
  }
}


/*
int anchor() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ANCHOR )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->anchor () );
  }
}


/*
void insertText(const QString &text)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT1 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertText(const QString &text, const QTextCharFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT2 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * par2 = (QTextCharFormat *) _qt5xhb_itemGetPtr(2);
    obj->insertText ( PQSTRING(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool movePosition(MoveOperation op, MoveMode = MoveAnchor, int n = 1)
*/
HB_FUNC_STATIC( QTEXTCURSOR_MOVEPOSITION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
    hb_retl( obj->movePosition (  (QTextCursor::MoveOperation) par1,  (QTextCursor::MoveMode) par2, (int) ISNIL(3)? 1 : hb_parni(3) ) );
  }
}


/*
bool visualNavigation() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_VISUALNAVIGATION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->visualNavigation () );
  }
}


/*
void setVisualNavigation(bool b)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETVISUALNAVIGATION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisualNavigation ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalMovementX(int x)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETVERTICALMOVEMENTX )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVerticalMovementX ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int verticalMovementX() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_VERTICALMOVEMENTX )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->verticalMovementX () );
  }
}


/*
void setKeepPositionOnInsert(bool b)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETKEEPPOSITIONONINSERT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKeepPositionOnInsert ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool keepPositionOnInsert() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_KEEPPOSITIONONINSERT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->keepPositionOnInsert () );
  }
}


/*
void deleteChar()
*/
HB_FUNC_STATIC( QTEXTCURSOR_DELETECHAR )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deleteChar ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void deletePreviousChar()
*/
HB_FUNC_STATIC( QTEXTCURSOR_DELETEPREVIOUSCHAR )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deletePreviousChar ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void select(SelectionType selection)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->select (  (QTextCursor::SelectionType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasSelection() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_HASSELECTION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasSelection () );
  }
}


/*
bool hasComplexSelection() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_HASCOMPLEXSELECTION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasComplexSelection () );
  }
}


/*
void removeSelectedText()
*/
HB_FUNC_STATIC( QTEXTCURSOR_REMOVESELECTEDTEXT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeSelectedText ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearSelection()
*/
HB_FUNC_STATIC( QTEXTCURSOR_CLEARSELECTION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearSelection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int selectionStart() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTIONSTART )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectionStart () );
  }
}


/*
int selectionEnd() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTIONEND )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectionEnd () );
  }
}


/*
QString selectedText() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTEDTEXT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->selectedText () ) );
  }
}


/*
QTextDocumentFragment selection() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTION )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentFragment * ptr = new QTextDocumentFragment( obj->selection () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
  }
}


/*
void selectedTableCells(int *firstRow, int *numRows, int *firstColumn, int *numColumns) const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTEDTABLECELLS )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->selectedTableCells ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextBlock block() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCK )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->block () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextCharFormat charFormat() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
void setCharFormat(const QTextCharFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) _qt5xhb_itemGetPtr(1);
    obj->setCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeCharFormat(const QTextCharFormat &modifier)
*/
HB_FUNC_STATIC( QTEXTCURSOR_MERGECHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) _qt5xhb_itemGetPtr(1);
    obj->mergeCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextBlockFormat blockFormat() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->blockFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );
  }
}


/*
void setBlockFormat(const QTextBlockFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETBLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) _qt5xhb_itemGetPtr(1);
    obj->setBlockFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeBlockFormat(const QTextBlockFormat &modifier)
*/
HB_FUNC_STATIC( QTEXTCURSOR_MERGEBLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) _qt5xhb_itemGetPtr(1);
    obj->mergeBlockFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextCharFormat blockCharFormat() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->blockCharFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
void setBlockCharFormat(const QTextCharFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETBLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) _qt5xhb_itemGetPtr(1);
    obj->setBlockCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeBlockCharFormat(const QTextCharFormat &modifier)
*/
HB_FUNC_STATIC( QTEXTCURSOR_MERGEBLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) _qt5xhb_itemGetPtr(1);
    obj->mergeBlockCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool atBlockStart() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATBLOCKSTART )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atBlockStart () );
  }
}


/*
bool atBlockEnd() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATBLOCKEND )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atBlockEnd () );
  }
}


/*
bool atStart() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATSTART )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atStart () );
  }
}


/*
bool atEnd() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATEND )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd () );
  }
}


/*
void insertBlock()
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK1 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertBlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertBlock(const QTextBlockFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK2 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) _qt5xhb_itemGetPtr(1);
    obj->insertBlock ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertBlock(const QTextBlockFormat &format, const QTextCharFormat &charFormat)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK3 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) _qt5xhb_itemGetPtr(1);
    QTextCharFormat * par2 = (QTextCharFormat *) _qt5xhb_itemGetPtr(2);
    obj->insertBlock ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextList *insertList(const QTextListFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST1 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) _qt5xhb_itemGetPtr(1);
    QTextList * ptr = obj->insertList ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextList *insertList(QTextListFormat::Style style)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST2 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextList * ptr = obj->insertList (  (QTextListFormat::Style) par1 );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextList *createList(const QTextListFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST1 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) _qt5xhb_itemGetPtr(1);
    QTextList * ptr = obj->createList ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextList *createList(QTextListFormat::Style style)
*/
HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST2 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextList * ptr = obj->createList (  (QTextListFormat::Style) par1 );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextList *currentList() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTLIST )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextList * ptr = obj->currentList ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextTable *insertTable(int rows, int cols, const QTextTableFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE1 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTableFormat * par3 = (QTextTableFormat *) _qt5xhb_itemGetPtr(3);
    QTextTable * ptr = obj->insertTable ( PINT(1), PINT(2), *par3 );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLE" );
  }
}


/*
QTextTable *insertTable(int rows, int cols)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE2 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTable * ptr = obj->insertTable ( PINT(1), PINT(2) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLE" );
  }
}


/*
QTextTable *currentTable() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTTABLE )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTable * ptr = obj->currentTable ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLE" );
  }
}


/*
QTextFrame *insertFrame(const QTextFrameFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTFRAME )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrameFormat * par1 = (QTextFrameFormat *) _qt5xhb_itemGetPtr(1);
    QTextFrame * ptr = obj->insertFrame ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}


/*
QTextFrame *currentFrame() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTFRAME )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * ptr = obj->currentFrame ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}


/*
void insertFragment(const QTextDocumentFragment &fragment)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTFRAGMENT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentFragment * par1 = (QTextDocumentFragment *) _qt5xhb_itemGetPtr(1);
    obj->insertFragment ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertHtml(const QString &html)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTHTML )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertHtml ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage(const QTextImageFormat &format, QTextFrameFormat::Position alignment)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE1 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextImageFormat * par1 = (QTextImageFormat *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->insertImage ( *par1,  (QTextFrameFormat::Position) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage(const QTextImageFormat &format)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE2 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextImageFormat * par1 = (QTextImageFormat *) _qt5xhb_itemGetPtr(1);
    obj->insertImage ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage(const QString &name)
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE3 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertImage ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage(const QImage &image, const QString &name = QString())
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE4 )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
    obj->insertImage ( *par1, OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void beginEditBlock()
*/
HB_FUNC_STATIC( QTEXTCURSOR_BEGINEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginEditBlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void joinPreviousEditBlock()
*/
HB_FUNC_STATIC( QTEXTCURSOR_JOINPREVIOUSEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->joinPreviousEditBlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endEditBlock()
*/
HB_FUNC_STATIC( QTEXTCURSOR_ENDEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endEditBlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCopyOf(const QTextCursor &other) const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ISCOPYOF )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isCopyOf ( *par1 ) );
  }
}


/*
int blockNumber() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKNUMBER )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->blockNumber () );
  }
}


/*
int columnNumber() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_COLUMNNUMBER )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnNumber () );
  }
}


/*
QTextDocument *document() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_DOCUMENT )
{
  QTextCursor * obj = (QTextCursor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}



HB_FUNC_STATIC( QTEXTCURSOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTCURSOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTCURSOR_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCURSOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTCURSOR_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCURSOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTCURSOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
