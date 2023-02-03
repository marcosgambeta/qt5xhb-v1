/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HCODEBLOCKVALIDATOR_H
#define HCODEBLOCKVALIDATOR_H

#include <QtGui/QValidator>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

class HCodeBlockValidator : public QValidator
{
  Q_OBJECT
public:
  explicit HCodeBlockValidator( QObject *parent = 0 );
  HCodeBlockValidator( PHB_ITEM codeblock, QObject *parent = 0 );
  ~HCodeBlockValidator();

  QValidator::State validate( QString & input, int & pos ) const;
  void fixup( QString & input ) const;

private:
  PHB_ITEM m_block;
};

#endif /* HCODEBLOCKVALIDATOR_H */
