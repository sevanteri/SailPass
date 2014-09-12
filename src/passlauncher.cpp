#include "passlauncher.h"

PassLauncher::PassLauncher(QObject *parent) :
    QObject(parent), m_process(new QProcess(this))
{
}

QStringList PassLauncher::showPassword(QString path)
{
    path = path.split(".password-store/")[1].replace(QRegExp(".gpg$"), "");
    m_process->start("/usr/bin/pass",
                     (QStringList() << path));

    m_process->waitForReadyRead();

    QStringList list;
    list << m_process->readLine();
    list << m_process->readAll();

    return list;
}


bool PassLauncher::movePassword(QString, QString) {
    return false;
}

bool PassLauncher::insertPassord(QString, QString) {
    return false;
}
