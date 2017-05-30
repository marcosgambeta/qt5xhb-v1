/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QKeySequenceEdit INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD keySequence
   METHOD setKeySequence
   METHOD clear

   METHOD onEditingFinished
   METHOD onKeySequenceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QKeySequenceEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
#endif
#endif

/*
QKeySequenceEdit(QWidget *parent = 0)
*/
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QKeySequenceEdit_new1 ()
{
  QKeySequenceEdit * o = new QKeySequenceEdit ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}
#endif

/*
QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = 0)
*/
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QKeySequenceEdit_new2 ()
{
  QKeySequence * par1 = (QKeySequence *) _qt5xhb_itemGetPtr(1);
  QKeySequenceEdit * o = new QKeySequenceEdit ( *par1, OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}
#endif

//[1]QKeySequenceEdit(QWidget *parent = 0)
//[2]QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = 0)

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QKeySequenceEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQKEYSEQUENCE(1) && ISOPTQWIDGET(2) )
  {
    QKeySequenceEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QKeySequence keySequence() const
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_KEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->keySequence () );
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
#endif
}

/*
void setKeySequence(const QKeySequence &keySequence)
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_SETKEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQKEYSEQUENCE(1) )
    {
      QKeySequence * par1 = (QKeySequence *) _qt5xhb_itemGetPtr(1);
      obj->setKeySequence ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
