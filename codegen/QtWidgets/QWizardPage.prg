$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QWizardPage INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD buttonText
   METHOD setButtonText
   METHOD cleanupPage
   METHOD initializePage
   METHOD isCommitPage
   METHOD setCommitPage
   METHOD isComplete
   METHOD isFinalPage
   METHOD setFinalPage
   METHOD nextId
   METHOD pixmap
   METHOD setPixmap
   METHOD subTitle
   METHOD setSubTitle
   METHOD title
   METHOD setTitle
   METHOD validatePage

   METHOD onCompleteChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QWizardPage ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWIZARDPAGE_NEW )
{
  QWizardPage * o = new QWizardPage ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString buttonText ( QWizard::WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARDPAGE_BUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->buttonText ( (QWizard::WizardButton) hb_parni(1) ) );
  }
}

/*
void setButtonText ( QWizard::WizardButton which, const QString & text )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETBUTTONTEXT )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setButtonText ( (QWizard::WizardButton) hb_parni(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void cleanupPage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_CLEANUPPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cleanupPage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void initializePage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_INITIALIZEPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->initializePage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCommitPage () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCommitPage () );
  }
}

/*
void setCommitPage ( bool commitPage )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETCOMMITPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setCommitPage ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isComplete () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISCOMPLETE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isComplete () );
  }
}


/*
bool isFinalPage () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_ISFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinalPage () );
  }
}

/*
void setFinalPage ( bool finalPage )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETFINALPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFinalPage ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int nextId () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_NEXTID )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->nextId () );
  }
}


/*
QPixmap pixmap ( QWizard::WizardPixmap which ) const
*/
HB_FUNC_STATIC( QWIZARDPAGE_PIXMAP )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap ( (QWizard::WizardPixmap) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETPIXMAP )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPixmap ( (QWizard::WizardPixmap) hb_parni(1), *PQPIXMAP(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString subTitle () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_SUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->subTitle () );
  }
}

/*
void setSubTitle ( const QString & subTitle )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETSUBTITLE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSubTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWIZARDPAGE_TITLE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}

/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QWIZARDPAGE_SETTITLE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool validatePage ()
*/
HB_FUNC_STATIC( QWIZARDPAGE_VALIDATEPAGE )
{
  QWizardPage * obj = (QWizardPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->validatePage () );
  }
}




#pragma ENDDUMP
