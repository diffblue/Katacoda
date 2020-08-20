echo " Run this script with <<source>> Unix command\n" 

#SETUP: Download and install dcover
read -p 'DCover URL: ' dcover_path

mkdir /root/dcover
cd /root/dcover

wget $dcover_path
if [ "$?" != "0" ]; then
        echo "Cannot execute: wget <dcover>" 1>&2
        exit 1
fi

unzip ${dcover_path##*/}
if [ "$?" != "0" ]; then
        echo "Cannot execute: unzip <dcover>" 1>&2
        exit 1
fi

cd /root/
export PATH="$PATH:/root/dcover"

dcover --version
if [ "$?" != "0" ]; then
        echo "Cannot execute: dcover --version" 1>&2
        exit 1
fi

#SETUP: Project dependencies
cp /root/Katacoda/projects /root/ -r

#FUNCTION: build out dependencies for given repo
function buildout {
  mvn test -q
  if [ "$?" != "0" ]; then
    echo "Cannot execute: mvn test" 1>&2
    exit 1
  fi

  dcover create
  if [ "$?" != "0" ]; then
    echo "Cannot execute: dcover create" 1>&2
    exit 1
  fi
}

#SETUP: Download all petclinic dependencies (18m36 to run dcover)
cd /root/projects/spring-petclinic
echo "Buildout: spring-petclinic"
buildout

#SETUP: Clean up build artifacts
rm -rf /root/projects
mv /root/Katacoda/projects* /root/
rm -rf /root/Katacoda
cd /root
