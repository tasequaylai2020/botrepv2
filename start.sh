echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Nhân bản chi nhánh chính...."
  git clone https://github.com/tasequaylai2020/botrepv2 /VideoPlayerTG
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/tasequaylai2020/botrepv2 -b $BRANCH /VideoPlayerTG
fi
cd /VideoPlayerTG
pip3 install -U -r requirements.txt
echo "Khởi động Bot...."
python3 main.py
