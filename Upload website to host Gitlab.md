
![](https://about.gitlab.com/images/blogimages/gitlab-pages/gitlab-ci-lint.png)
#### Include 5 steps:
+ Create a new project
![Create a new project](https://lh3.googleusercontent.com/ETysB4lEWwDqJ_O5E0gd31iGzpoPJ7iHOghkXr7tXKpsNr51JVr97oo-0jXSIpIqGPfGkiiX4FIlet4V3_87A5n_UmiLvdATdNbUnbtAYCT6EaGM5qUft-Xfxi5GaL5CyLeWuSGkCLvx3hI7xIDUYczFAzTThqLJuWQu69s39KxfqCTUOjbqpOPyw0BEeWY-fn4GDqHmqsWe_Vn_7sVq4wX6qWoMXqLSaJeUHGgIpImcdGli6zrfcZjhbfSwt9r8Rn6mTQJkFOqYN-x3vylYop1MuMxP3rArsUMNfFL6aY59nOZhd8_u2VwTlgj9jIa2E1eV8Tg7kSeuKYcHBuLU9LBzWEDpCdtoCJfn1s9w1HVaAq9nRpuekYwwxoVCYyrM0WMXfhwRzPlEBydyyMroYs_9wB--w80nY1s9Whtj7zrkVQxfzQRPNAUs080zAsb-Xfambr3etkScLlr3SZe3bk5jyMIOQl5NGnWjnNuHpWM4ceBtlX4RdGCz2B9oaov0bgo3DJuAikbZNjoSqWHjmpf4EL7d-fZMDOxdPLhL7tP6oQUL3oe66no5oCbmCO7NTRRdzzfjC1qd7ZcCuSbGiMIuGeypwGfC5nrfs-uDWE9WqWLYdnW0S-nuWXeX7b8D3dkUhplT_BcsznaZAFbptpS6IvBRbhNb=w1010-h523-no)

You can choose **private, internal, public** mode and create project

+ Add the configuration file (.gitlab-ci.yml)

If GitLab CI for plain HTML websites, you should use the following below:

```
pages:
  stage: deploy
  script:
  - mkdir .public
  - cp -r * .public
  - mv .public public
  artifacts:
    paths:
    - public
  only:
  - master
```
+ Upload your website content
  + Create a file index.html
    ```
    <!DOCTYPE html>
    <html>
      <head>
        <title>Home</title>
        <meta charset=UTF-8 /> 
        <meta content='width=device-width, initial-scale=1.0' name=viewport />
        <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        <link rel="stylesheet" href="css/header" type="text/css" >
        <style>
          // Code
        </style>

      </head>
      <body>
        <h1>The news morning</h1>
      </body>
      <script src="js/menu.js"></script>
      <script type="text/javascript">

          // Code

        </script>
    </html>
    ```
    
    You have through 3 stages to deploy project: **Pending, running, passed**
    
    ![](https://lh3.googleusercontent.com/SSMmShSb3_q8PelC84XyIgyzIbCEjCz6GX2BUf0jJG-nUKHqdTn_PR3OyJ8asZ0XchbFuVJP1EXY3YFcMUye9lGKFNQbWSGGkiNa3q9ryJTHEx301XI8dt9D3pHTgDp-e9bmZzAEwe4AZdN0sCtdPSHNFZPZhw1fUfSVAyVqvhjVUHe_2h1eK3H6pV1M61z4RaUrwzBX9_LJDQtrtmbrHGMmXrofRV8loQeH9-IZClyDOyJUvRhyr3dYhAAFqZ0N-Bp-N-wn0WhxelH0fF5QEkkU0QccB49_V6LoSaJuYolCMVRAIhLaI_oJi80XrgjIqfmKDwFnDrQkpTuCSyv-XslP8ZRWQ_c7hd9wWSzEaulNKVoiLwAzmIv-cSruqT-tj-77JY5wBMEoXITJ-QYcRUchmPlZBHpT_eNNnsevSmxsExl4c3sTtF4S4D5x45Bl9vYLsJeRPLN44AjUEXfndfRDTaixbIO6ieJUlrEkyG3L-n0cIh2pKF8KUrqWu4voU42gWyrlCSJ8SYh1xJL66HK4JCUMPxHL3ISp4G9iqdJeBr8-CS4RdRJQi2-lzxzJJt7PIa4iZr64o2BtXL9kgepcCy6t_hWvJGo2tT-Ne3YWvzc9XWeS3XBwd1F15lQtzgSiFGDTzcWvoe80mBzxk7vjZmRdTx_3=w1296-h412-no)
    
    ![](https://lh3.googleusercontent.com/3dK1t7qc1UzScOzo7vG_opn5H7j4xx7McAb2CcILpISLOS09KNKDiGY1Qyv2PnOTDYCJ5FYAF1bKTdsAWt643DAFznzuTOKxMfllKrrIW6ru9JfgFIHKHbqtllDzHUJZEJRAMSluoCZugPmbdj-Z7pUWiejoK-lzEtkjO1ZC35yuCMiSCs3EmcvjkOlh3ixUklHA2lqEFnR4YlnkUU961ZJ9EkPrQ5WUC2aCmwWiYIOQHBtbZk-P9pLyA4Z72r851W36JQzHmJLpffRi4QcEnBkNu9TYPixzdcEhxGdwz7pS91EhQk9FDcUVNl0dFS-LgY2E84f4FFm8ReBmlsH7r-L1xDQJ6UYBISiCJ3HGTYAiBkDAPg0i6EUFqzpap_397C81i3FPNfDc_AwvGPoqvm9_8gCy7SjrY3_c0dkn6IBtoC1vKoNd57PAOGlrvU_su1XTILpQYJmP-fYN6wtizt33kk49Wgdy7rqhCT5KuDaymMsfEl3ayO0UeO82payzD96BZT7FNZjOOEfgQB3yjWlQnMKGPMTiFUhmvZKvoMbN_gtESHCots50mctImnR4y-28L-0EvSeSF0LP12LfKAbfqtRsd0m6Z6Q9GslDI4CkQo5LYr3snVwcKuqUhVtsUX5VEC_cWVnqTH23SD6gQMbtaw3Mc0D6=w1264-h292-no)
    
    ![](https://lh3.googleusercontent.com/DiFLA9kqbUeJ_jyEiRIVzuoRmBlsJchXN9BPIY04S83u5hVYK-gkf9NbxykVOcsZ1Dn7wUz0BUiTnmYLe88CTrKQLgujHI7IrU5ocuCURYCWf-4qKurTLhowpUOUoLSDuXaD7R35x6gPEqZC57UL_N5B1k7LwIeESEmSUadZVVnuJrdxPMXfWzHiGLEl9aD2fwAwi5yS3Q0CS0dXDc69etVwkIkzJg4Z1886zRcjai4cxjqp4ZEnEvGvSHrw-90osJExZ8HJC7ydAwKlHQru1BLGtdrZmo04cgf_3ogH8dxGKrfjHYHCuRXRFbAFyc7u2Luca2deckGXLxqXfrNzvIhK3doUYl5rWgJ43jSPqdQ_ss2_jzhpH607XFbXLRtYPgjeQMX1qAUVJpxO0J3wFnVvP20QFBOlzdi4FFMNcD3u1iZsr7sxyFlx4qwn28TDl-I6oNkxTM8Q78cvJ7r4ILngDqgYQE1RYrrCCk7adBWDAm8psCO1dfGLBvvNpKdCEuDhqfedtOS-bdETAH0GCGwqhebwR_iRnspjbY2iUThwClrOgVl45z6rosxe1MxslzDTXQICkVA7wzWJcvzXh5oH9Qx4e3CKnZr0wa4o1N2CrxqJfaBmSe96cMbdwrkb_Cg2tRiMQvDohisar5lxWxdRs8G2k5uj=w1276-h332-no)
    
+ Add your custom domain (optional)

`You will be able to access your personal site under https://username.gitlab.io and your company site under https://groupname.gitlab.io`

Example: My project has name and username are **joinstock** and **flightstar**. So, Url of host is [https://flightstar.gitlab.io/joinstock/](https://flightstar.gitlab.io/joinstock/)

![](https://lh3.googleusercontent.com/qaX1gGqFJCXHuRFxSLTt_-u-thit8fuzOYkBhNmMdlA1Bds70aYdGU3YYR246PUyTbx1--qIiUfvWw4uMgqwj0QCQ8pj8fnc37J5Ko0zJFZBnkU4xr7lCc3193mDgjwzgjJNutFb9JMbYaG8zQoLDLDM2oAcI2aov5Gvk4F5O5UuZq7lxqz_sMroUrO0-epfKP7yPjqBuN-coJEvv4-2XjGmmxZW9SKnTDgVNdhMdRbYbb-yeCBVTHtsSk3RA9oIsDCrSrPoLlEsM5u__iREHtb4Ap-Sn63dSN8Ih1-VZdlTs8uXjo6lcg3vdP67wWXrjfkthRZqLoxVPCYV172i5C1g_6RhRc9oc_Q7WNAZwH_7uNikcB4GZHuc0fxng0ueo-QmDXha9xtmfLHA1LLvaHXjKDq-yUUvc-lVqyDTO0sGN0fEmGMzQ9NUN8ucsXpFmQwILrj9tbEqo-ZDz7m2NkRmEZ1FLsxmxrMeACdSl-Mjz48WUzlsa2GdNeZxOq4hZJLTjQf1hO02_bPeK9Gb_fWSQu_LQ3q2oa1jBml-6GHEfnATLk76ZndAzBkJH8xehQMb5-dXKTuw9rU7HJAV2U_VmswCqA4EKCn5VEAUq94aWSe2wZSRkz47jvSDMpBGJ7Gh7XyI-BXrYb92Ww5tn6CIt3Y-yA5s=w749-h268-no)

+ Done!

References:

[Gitlab - Upload website to host Gitlab](https://about.gitlab.com/2016/04/07/gitlab-pages-setup/)
