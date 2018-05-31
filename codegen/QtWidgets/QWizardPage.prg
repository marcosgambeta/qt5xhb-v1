%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWizardPage ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QString buttonText ( QWizard::WizardButton which ) const
$method=|QString|buttonText|QWizard::WizardButton

$prototype=void setButtonText ( QWizard::WizardButton which, const QString & text )
$method=|void|setButtonText|QWizard::WizardButton,const QString &

$prototype=virtual void cleanupPage ()
$virtualMethod=|void|cleanupPage|

$prototype=virtual void initializePage ()
$virtualMethod=|void|initializePage|

$prototype=bool isCommitPage () const
$method=|bool|isCommitPage|

$prototype=void setCommitPage ( bool commitPage )
$method=|void|setCommitPage|bool

$prototype=virtual bool isComplete () const
$virtualMethod=|bool|isComplete|

$prototype=bool isFinalPage () const
$method=|bool|isFinalPage|

$prototype=void setFinalPage ( bool finalPage )
$method=|void|setFinalPage|bool

$prototype=virtual int nextId () const
$virtualMethod=|int|nextId|

$prototype=QPixmap pixmap ( QWizard::WizardPixmap which ) const
$method=|QPixmap|pixmap|QWizard::WizardPixmap

$prototype=void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

$prototype=QString subTitle () const
$method=|QString|subTitle|

$prototype=void setSubTitle ( const QString & subTitle )
$method=|void|setSubTitle|const QString &

$prototype=QString title () const
$method=|QString|title|

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototype=virtual bool validatePage ()
$virtualMethod=|bool|validatePage|

$beginSignals
$signal=|completeChanged()
$endSignals

#pragma ENDDUMP
