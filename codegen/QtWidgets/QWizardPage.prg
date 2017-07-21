$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QWizardPage INHERIT QWidget

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
$constructor=|new|QWidget *=0

$deleteMethod

/*
QString buttonText ( QWizard::WizardButton which ) const
*/
$method=|QString|buttonText|QWizard::WizardButton

/*
void setButtonText ( QWizard::WizardButton which, const QString & text )
*/
$method=|void|setButtonText|QWizard::WizardButton,const QString &

/*
virtual void cleanupPage ()
*/
$method=|void|cleanupPage|

/*
virtual void initializePage ()
*/
$method=|void|initializePage|

/*
bool isCommitPage () const
*/
$method=|bool|isCommitPage|

/*
void setCommitPage ( bool commitPage )
*/
$method=|void|setCommitPage|bool

/*
virtual bool isComplete () const
*/
$method=|bool|isComplete|

/*
bool isFinalPage () const
*/
$method=|bool|isFinalPage|

/*
void setFinalPage ( bool finalPage )
*/
$method=|void|setFinalPage|bool

/*
virtual int nextId () const
*/
$method=|int|nextId|

/*
QPixmap pixmap ( QWizard::WizardPixmap which ) const
*/
$method=|QPixmap|pixmap|QWizard::WizardPixmap

/*
void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
*/
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

/*
QString subTitle () const
*/
$method=|QString|subTitle|

/*
void setSubTitle ( const QString & subTitle )
*/
$method=|void|setSubTitle|const QString &

/*
QString title () const
*/
$method=|QString|title|

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
virtual bool validatePage ()
*/
$method=|bool|validatePage|

#pragma ENDDUMP
