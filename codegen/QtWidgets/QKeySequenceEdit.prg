$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QKeySequenceEdit INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD keySequence
   METHOD setKeySequence
   METHOD clear

   METHOD onEditingFinished
   METHOD onKeySequenceChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

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
  QKeySequenceEdit * o = new QKeySequenceEdit ( *PQKEYSEQUENCE(1), OPQWIDGET(2,0) );
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

$deleteMethod=5,2,0

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
      obj->setKeySequence ( *PQKEYSEQUENCE(1) );
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
