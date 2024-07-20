//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCURSOR
REQUEST QTEXTTABLECELL
REQUEST QTEXTTABLEFORMAT
#endif

CLASS QTextTable INHERIT QTextFrame

   METHOD new
   METHOD delete
   METHOD resize
   METHOD insertRows
   METHOD insertColumns
   METHOD appendRows
   METHOD appendColumns
   METHOD removeRows
   METHOD removeColumns
   METHOD mergeCells
   METHOD splitCell
   METHOD rows
   METHOD columns
   METHOD cellAt
   METHOD rowStart
   METHOD rowEnd
   METHOD setFormat
   METHOD format

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextTable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QTextTable>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QTextTable>
#endif

#include <QtGui/QTextCursor>

    /*
    QTextTable( QTextDocument * doc )
    */
HB_FUNC_STATIC(QTEXTTABLE_NEW)
{
  if (ISNUMPAR(1) && ISQTEXTDOCUMENT(1))
  {
    QTextTable *obj = new QTextTable(PQTEXTDOCUMENT(1));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTTABLE_DELETE)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void resize( int rows, int cols )
*/
HB_FUNC_STATIC(QTEXTTABLE_RESIZE)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->resize(PINT(1), PINT(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void insertRows( int pos, int num )
*/
HB_FUNC_STATIC(QTEXTTABLE_INSERTROWS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->insertRows(PINT(1), PINT(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void insertColumns( int pos, int num )
*/
HB_FUNC_STATIC(QTEXTTABLE_INSERTCOLUMNS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->insertColumns(PINT(1), PINT(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void appendRows( int count )
*/
HB_FUNC_STATIC(QTEXTTABLE_APPENDROWS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->appendRows(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void appendColumns( int count )
*/
HB_FUNC_STATIC(QTEXTTABLE_APPENDCOLUMNS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->appendColumns(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeRows( int pos, int num )
*/
HB_FUNC_STATIC(QTEXTTABLE_REMOVEROWS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->removeRows(PINT(1), PINT(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeColumns( int pos, int num )
*/
HB_FUNC_STATIC(QTEXTTABLE_REMOVECOLUMNS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->removeColumns(PINT(1), PINT(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QTEXTTABLE_MERGECELLS)
{
  if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void mergeCells( int row, int col, int numRows, int numCols )
    */
    QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->mergeCells(PINT(1), PINT(2), PINT(3), PINT(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
  {
    /*
    void mergeCells( const QTextCursor &cursor )
    */
    QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->mergeCells(*PQTEXTCURSOR(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void splitCell( int row, int col, int numRows, int numCols )
*/
HB_FUNC_STATIC(QTEXTTABLE_SPLITCELL)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      obj->splitCell(PINT(1), PINT(2), PINT(3), PINT(4));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int rows() const
*/
HB_FUNC_STATIC(QTEXTTABLE_ROWS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->rows());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int columns() const
*/
HB_FUNC_STATIC(QTEXTTABLE_COLUMNS)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->columns());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEXTTABLE_CELLAT)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    QTextTableCell cellAt( int row, int col ) const
    */
    QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QTextTableCell *ptr = new QTextTableCell(obj->cellAt(PINT(1), PINT(2)));
      Qt5xHb::createReturnClass(ptr, "QTEXTTABLECELL", true);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QTextTableCell cellAt( int position ) const
    */
    QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QTextTableCell *ptr = new QTextTableCell(obj->cellAt(PINT(1)));
      Qt5xHb::createReturnClass(ptr, "QTEXTTABLECELL", true);
    }
  }
  else if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
  {
    /*
    QTextTableCell cellAt( const QTextCursor &c ) const
    */
    QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QTextTableCell *ptr = new QTextTableCell(obj->cellAt(*PQTEXTCURSOR(1)));
      Qt5xHb::createReturnClass(ptr, "QTEXTTABLECELL", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QTextCursor rowStart( const QTextCursor &c ) const
*/
HB_FUNC_STATIC(QTEXTTABLE_ROWSTART)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
    {
#endif
      QTextCursor *ptr = new QTextCursor(obj->rowStart(*PQTEXTCURSOR(1)));
      Qt5xHb::createReturnClass(ptr, "QTEXTCURSOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextCursor rowEnd( const QTextCursor &c ) const
*/
HB_FUNC_STATIC(QTEXTTABLE_ROWEND)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
    {
#endif
      QTextCursor *ptr = new QTextCursor(obj->rowEnd(*PQTEXTCURSOR(1)));
      Qt5xHb::createReturnClass(ptr, "QTEXTCURSOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setFormat( const QTextTableFormat &format )
*/
HB_FUNC_STATIC(QTEXTTABLE_SETFORMAT)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTTABLEFORMAT(1))
    {
#endif
      obj->setFormat(*PQTEXTTABLEFORMAT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QTextTableFormat format() const
*/
HB_FUNC_STATIC(QTEXTTABLE_FORMAT)
{
  QTextTable *obj = (QTextTable *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextTableFormat *ptr = new QTextTableFormat(obj->format());
      Qt5xHb::createReturnClass(ptr, "QTEXTTABLEFORMAT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
