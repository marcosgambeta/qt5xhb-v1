/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTTEXTDOCUMENTLAYOUT
REQUEST QCHAR
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAME
REQUEST QTEXTOBJECT
REQUEST QTEXTBLOCK
REQUEST QSIZEF
REQUEST QFONT
REQUEST QVARIANT
REQUEST QTEXTOPTION
REQUEST QTEXTDOCUMENTPRIVATE
#endif

CLASS QTextDocument INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clone
   METHOD isEmpty
   METHOD clear
   METHOD setUndoRedoEnabled
   METHOD isUndoRedoEnabled
   METHOD isUndoAvailable
   METHOD isRedoAvailable
   METHOD availableUndoSteps
   METHOD availableRedoSteps
   METHOD revision
   METHOD setDocumentLayout
   METHOD documentLayout
   METHOD setMetaInformation
   METHOD metaInformation
   METHOD toHtml
   METHOD setHtml
   METHOD toPlainText
   METHOD setPlainText
   METHOD characterAt
   METHOD find1
   METHOD find2
   METHOD find3
   METHOD find4
   METHOD find
   METHOD frameAt
   METHOD rootFrame
   METHOD object
   METHOD objectForFormat
   METHOD findBlock
   METHOD findBlockByNumber
   METHOD findBlockByLineNumber
   METHOD begin
   METHOD end
   METHOD firstBlock
   METHOD lastBlock
   METHOD setPageSize
   METHOD pageSize
   METHOD setDefaultFont
   METHOD defaultFont
   METHOD pageCount
   METHOD isModified
   METHOD print
   METHOD resource
   METHOD addResource
   METHOD markContentsDirty
   METHOD setUseDesignMetrics
   METHOD useDesignMetrics
   METHOD drawContents
   METHOD setTextWidth
   METHOD textWidth
   METHOD idealWidth
   METHOD indentWidth
   METHOD setIndentWidth
   METHOD documentMargin
   METHOD setDocumentMargin
   METHOD adjustSize
   METHOD size
   METHOD blockCount
   METHOD lineCount
   METHOD characterCount
   METHOD setDefaultStyleSheet
   METHOD defaultStyleSheet
   METHOD undo1
   METHOD redo1
   METHOD clearUndoRedoStacks
   METHOD maximumBlockCount
   METHOD setMaximumBlockCount
   METHOD defaultTextOption
   METHOD setDefaultTextOption
   METHOD defaultCursorMoveStyle
   METHOD setDefaultCursorMoveStyle
   METHOD undo2
   METHOD undo
   METHOD redo2
   METHOD redo
   METHOD appendUndoItem
   METHOD setModified
   METHOD docHandle

   METHOD onContentsChange
   METHOD onContentsChanged
   METHOD onUndoAvailable
   METHOD onRedoAvailable
   METHOD onUndoCommandAdded
   METHOD onModificationChanged
   METHOD onCursorPositionChanged
   METHOD obBlockCountChanged
   METHOD onDocumentLayoutChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextDocument>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextDocument>
#endif

#include <QTextOption>
#include <QTextCursor>
#include <QTextBlock>

/*
QTextDocument(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_NEW1 )
{
  QTextDocument * o = new QTextDocument ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextDocument(const QString &text, QObject *parent = 0)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_NEW2 )
{
  QTextDocument * o = new QTextDocument ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextDocument(QObject *parent = 0)
//[2]QTextDocument(const QString &text, QObject *parent = 0)

HB_FUNC_STATIC( QTEXTDOCUMENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENT_DELETE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QTextDocument *clone(QObject *parent = 0) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CLONE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * ptr = obj->clone ( OPQOBJECT(1,0) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISEMPTY )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
virtual void clear()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CLEAR )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUndoRedoEnabled(bool enable)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETUNDOREDOENABLED )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUndoRedoEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isUndoRedoEnabled() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISUNDOREDOENABLED )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isUndoRedoEnabled () );
  }
}


/*
bool isUndoAvailable() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISUNDOAVAILABLE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isUndoAvailable () );
  }
}


/*
bool isRedoAvailable() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISREDOAVAILABLE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isRedoAvailable () );
  }
}


/*
int availableUndoSteps() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_AVAILABLEUNDOSTEPS )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->availableUndoSteps () );
  }
}


/*
int availableRedoSteps() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_AVAILABLEREDOSTEPS )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->availableRedoSteps () );
  }
}


/*
int revision() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_REVISION )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->revision () );
  }
}


/*
void setDocumentLayout(QAbstractTextDocumentLayout *layout)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDOCUMENTLAYOUT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractTextDocumentLayout * par1 = (QAbstractTextDocumentLayout *) _qt5xhb_itemGetPtr(1);
    obj->setDocumentLayout ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractTextDocumentLayout *documentLayout() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DOCUMENTLAYOUT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractTextDocumentLayout * ptr = obj->documentLayout ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTTEXTDOCUMENTLAYOUT" );
  }
}


/*
void setMetaInformation(MetaInformation info, const QString &)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETMETAINFORMATION )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMetaInformation ( (QTextDocument::MetaInformation) hb_parni(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString metaInformation(MetaInformation info) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_METAINFORMATION )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->metaInformation ( (QTextDocument::MetaInformation) hb_parni(1) ) );
  }
}


/*
QString toHtml(const QByteArray &encoding = QByteArray()) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_TOHTML )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
    RQSTRING( obj->toHtml ( par1 ) );
  }
}


/*
void setHtml(const QString &html)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETHTML )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHtml ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toPlainText() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_TOPLAINTEXT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->toPlainText () );
  }
}


/*
void setPlainText(const QString &text)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETPLAINTEXT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlainText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QChar characterAt(int pos) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CHARACTERAT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->characterAt ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QTextCursor find(const QString &subString, int from = 0, FindFlags options = 0) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND1 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( PQSTRING(1), OPINT(2,0), (QTextDocument::FindFlags) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor find(const QString &subString, const QTextCursor &from, FindFlags options = 0) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND2 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * par2 = (QTextCursor *) _qt5xhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( PQSTRING(1), *par2, (QTextDocument::FindFlags) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor find(const QRegExp &expr, int from = 0, FindFlags options = 0) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND3 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( *PQREGEXP(1), OPINT(2,0), (QTextDocument::FindFlags) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor find(const QRegExp &expr, const QTextCursor &from, FindFlags options = 0) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND4 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( *PQREGEXP(1), *PQTEXTCURSOR(2), (QTextDocument::FindFlags) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


//[1]QTextCursor find(const QString &subString, int from = 0, FindFlags options = 0) const
//[2]QTextCursor find(const QString &subString, const QTextCursor &from, FindFlags options = 0) const
//[3]QTextCursor find(const QRegExp &expr, int from = 0, FindFlags options = 0) const
//[4]QTextCursor find(const QRegExp &expr, const QTextCursor &from, FindFlags options = 0) const

HB_FUNC_STATIC( QTEXTDOCUMENT_FIND )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND1 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQTEXTCURSOR(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND2 );
  }
  else if( ISBETWEEN(1,3) && ISQREGEXP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND3 );
  }
  else if( ISBETWEEN(2,3) && ISQREGEXP(1) && ISQTEXTCURSOR(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextFrame *frameAt(int pos) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FRAMEAT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * ptr = obj->frameAt ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}


/*
QTextFrame *rootFrame() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ROOTFRAME )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrame * ptr = obj->rootFrame ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}


/*
QTextObject *object(int objectIndex) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_OBJECT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextObject * ptr = obj->object ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOBJECT" );
  }
}


/*
QTextObject *objectForFormat(const QTextFormat &) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_OBJECTFORFORMAT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextObject * ptr = obj->objectForFormat ( *PQTEXTFORMAT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOBJECT" );
  }
}


/*
QTextBlock findBlock(int pos) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FINDBLOCK )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->findBlock ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock findBlockByNumber(int blockNumber) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FINDBLOCKBYNUMBER )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->findBlockByNumber ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock findBlockByLineNumber(int blockNumber) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FINDBLOCKBYLINENUMBER )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->findBlockByLineNumber ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock begin() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_BEGIN )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->begin () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock end() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_END )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->end () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock firstBlock() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIRSTBLOCK )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->firstBlock () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock lastBlock() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_LASTBLOCK )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->lastBlock () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
void setPageSize(const QSizeF &size)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETPAGESIZE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPageSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF pageSize() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_PAGESIZE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->pageSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
void setDefaultFont(const QFont &font)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTFONT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont defaultFont() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTFONT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->defaultFont () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
int pageCount() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_PAGECOUNT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->pageCount () );
  }
}


/*
bool isModified() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISMODIFIED )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isModified () );
  }
}


/*
void print(QPagedPaintDevice *printer) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_PRINT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPagedPaintDevice * par1 = (QPagedPaintDevice *) _qt5xhb_itemGetPtr(1);
    obj->print ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant resource(int type, const QUrl &name) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_RESOURCE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->resource ( PINT(1), *PQURL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void addResource(int type, const QUrl &name, const QVariant &resource)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ADDRESOURCE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addResource ( PINT(1), *PQURL(2), *PQVARIANT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void markContentsDirty(int from, int length)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_MARKCONTENTSDIRTY )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->markContentsDirty ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUseDesignMetrics(bool b)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETUSEDESIGNMETRICS )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUseDesignMetrics ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool useDesignMetrics() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_USEDESIGNMETRICS )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->useDesignMetrics () );
  }
}


/*
void drawContents(QPainter *painter, const QRectF &rect = QRectF())
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DRAWCONTENTS )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF par2 = ISNIL(2)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(2);
    obj->drawContents ( PQPAINTER(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETTEXTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal textWidth() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_TEXTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->textWidth () );
  }
}


/*
qreal idealWidth() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_IDEALWIDTH )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->idealWidth () );
  }
}


/*
qreal indentWidth() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_INDENTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->indentWidth () );
  }
}


/*
void setIndentWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETINDENTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndentWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal documentMargin() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DOCUMENTMARGIN )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->documentMargin () );
  }
}


/*
void setDocumentMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDOCUMENTMARGIN )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDocumentMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void adjustSize()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ADJUSTSIZE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->adjustSize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SIZE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
int blockCount() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_BLOCKCOUNT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->blockCount () );
  }
}


/*
int lineCount() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_LINECOUNT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lineCount () );
  }
}


/*
int characterCount() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CHARACTERCOUNT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->characterCount () );
  }
}


/*
void setDefaultStyleSheet(const QString &sheet)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTSTYLESHEET )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultStyleSheet ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString defaultStyleSheet() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTSTYLESHEET )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->defaultStyleSheet () );
  }
}


/*
void undo(QTextCursor *cursor)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO1 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    obj->undo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void redo(QTextCursor *cursor)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_REDO1 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    obj->redo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearUndoRedoStacks(Stacks historyToClear = UndoAndRedoStacks)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CLEARUNDOREDOSTACKS )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QTextDocument::UndoAndRedoStacks : hb_parni(1);
    obj->clearUndoRedoStacks ( (QTextDocument::Stacks) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int maximumBlockCount() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_MAXIMUMBLOCKCOUNT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->maximumBlockCount () );
  }
}


/*
void setMaximumBlockCount(int maximum)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETMAXIMUMBLOCKCOUNT )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumBlockCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextOption defaultTextOption() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTTEXTOPTION )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextOption * ptr = new QTextOption( obj->defaultTextOption () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


/*
void setDefaultTextOption(const QTextOption &option)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTTEXTOPTION )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultTextOption ( *PQTEXTOPTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CursorMoveStyle defaultCursorMoveStyle() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTCURSORMOVESTYLE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultCursorMoveStyle () );
  }
}


/*
void setDefaultCursorMoveStyle(Qt::CursorMoveStyle style)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTCURSORMOVESTYLE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultCursorMoveStyle ( (Qt::CursorMoveStyle) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO2 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->undo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void undo(QTextCursor *cursor)
//[2]void undo()

HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_UNDO1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_UNDO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void redo()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_REDO2 )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->redo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void redo(QTextCursor *cursor)
//[2]void redo()

HB_FUNC_STATIC( QTEXTDOCUMENT_REDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_REDO1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_REDO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendUndoItem(QAbstractUndoItem *)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_APPENDUNDOITEM )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractUndoItem * par1 = (QAbstractUndoItem *) _qt5xhb_itemGetPtr(1);
    obj->appendUndoItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModified(bool m = true)
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETMODIFIED )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setModified ( OPBOOL(1,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextDocumentPrivate *docHandle() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DOCHANDLE )
{
  QTextDocument * obj = (QTextDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocumentPrivate * ptr = obj->docHandle ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTPRIVATE" );
  }
}




#pragma ENDDUMP
