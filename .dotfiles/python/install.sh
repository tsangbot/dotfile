if ! [ -x "$(command -v pip3)" ]; then
  echo "  Installing pip for you."
  sudo easy_install-3.6 pip
fi

if ! [ -x "$(command -v pipenv)" ]; then
  echo "  Installing pipenv for you."
  pip3 install --user pipenv
fi

pip3 install virtualenvwrapper
