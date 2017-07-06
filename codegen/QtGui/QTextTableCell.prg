$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTCURSOR
#endif

CLASS QTextTableCell

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setFormat
   METHOD format
   METHOD row
   METHOD column
   METHOD rowSpan
   METHOD columnSpan
   METHOD isValid
   METHOD firstCursorPosition
   METHOD lastCursorPosition
   METHOD firstPosition
   METHOD lastPosition
   METHOD tableCellFormatIndex

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

#include <QTextCursor>

/*
QTextTableCell()
*/
HB_FUNC_STATIC( QTEXTTABLECELL_NEW1 )
{
  QTextTableCell * o = new QTextTableCell ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextTableCell(const QTextTableCell &o)
*/
HB_FUNC_STATIC( QTEXTTABLECELL_NEW2 )
{
  QTextTableCell * o = new QTextTableCell ( *PQTEXTTABLECELL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextTableCell()
//[2]QTextTableCell(const QTextTableCell &o)

HB_FUNC_STATIC( QTEXTTABLECELL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTTABLECELL_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTTABLECELL(1) )
  {
    HB_FUNC_EXEC( QTEXTTABLECELL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setFormat(const QTextCharFormat &format)
*/
HB_FUNC_STATIC( QTEXTTABLECELL_SETFORMAT )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQTEXTCHARFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextCharFormat format() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FORMAT )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
int row() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ROW )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->row () );
  }
}


/*
int column() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_COLUMN )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->column () );
  }
}


/*
int rowSpan() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ROWSPAN )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowSpan () );
  }
}


/*
int columnSpan() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_COLUMNSPAN )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnSpan () );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ISVALID )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QTextCursor firstCursorPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FIRSTCURSORPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->firstCursorPosition () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor lastCursorPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_LASTCURSORPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->lastCursorPosition () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
int firstPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FIRSTPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->firstPosition () );
  }
}


/*
int lastPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_LASTPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lastPosition () );
  }
}




/*
int tableCellFormatIndex() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_TABLECELLFORMATINDEX )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->tableCellFormatIndex () );
  }
}

$extraMethods

#pragma ENDDUMP
