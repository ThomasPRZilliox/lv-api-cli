import argparse
from my_lv_app import my_lv_app as lv_app

def main():
    parser = argparse.ArgumentParser(description="My CLI Tool")
    parser.add_argument('action', type=str, help='Your action')
    parser.add_argument('--payload', type=str, help='Your payload')
    args = parser.parse_args()

    if args.action == "stop":
        print("sending stop...")
        lv_app.stop()
    elif args.action == "say":
        lv_app.say(args.payload)

    

if __name__ == "__main__":
    main()