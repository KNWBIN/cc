from selenium import webdriver
import time
import re

opt = webdriver.ChromeOptions()  # 创建浏览器
opt.add_argument('--headless')
opt.add_argument('--no-sandbox')
opt.add_argument('--disable-gpu')
opt.add_argument('--disable-dev-shm-usage')
# opt.set_headless()                            #无窗口模式
driver = webdriver.Chrome(options=opt)  # 创建浏览器对象
driver.get('https://lncn.org/')  # 打开网页
driver.maximize_window()  # 最大化窗口
time.sleep(2)  # 加载等待


driver.find_element_by_xpath('//*[@id="index"]/div[2]/div[1]/div[1]/div[4]/button/span').click()  # 点击按钮

time.sleep(5)  # 加载等待
driver.close()
