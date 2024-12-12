Received: from sonic309-15.consmr.mail.bf2.yahoo.com (sonic309-15.consmr.mail.bf2.yahoo.com [74.6.129.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E098A29CEB
	for <keys@linux.kernel.org>; Thu, 12 Dec 2024 00:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.129.125
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964006; cv=none; b=BS6QHD/1ecJk3dAXDkf8Zdbi4CHFemMPO2aZPviXnNSsduD7JUdnEgFRhILdouLn6D3YfIp5vpLoVvAEaTLRX5KOSa1lnk1RSvhC4NmYjFWcE0DIZnx4eUd3ssOBPWUeHqd9YvJG2WWE5jqvDtZpq+43R+11yQnFjqVIxzowSd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964006; c=relaxed/simple;
	bh=CX7h5k7b4r50vmjIvC4vNDCpd8i4BGVzvmP58CayXYU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=Ilyylg45o0aZWG+N6W/SSjFYgYFm0ikQ07UNyx+tZp+i+ByhhXJ06YppsA3Ha10fTLladvZbwAPNlDd4dEzyyTO1Sdi6RlFjG6/wPWcrAorfEpNt+tdjznViYciWKRtBY5n7vOfuKyUN4+0c5eUrmFc7OkrO/UtCdfXc0UqR6NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=verizon.net; spf=pass smtp.mailfrom=verizon.net; dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b=EHNVQ7BO; arc=none smtp.client-ip=74.6.129.125
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=verizon.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=verizon.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b="EHNVQ7BO"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1733963998; bh=CX7h5k7b4r50vmjIvC4vNDCpd8i4BGVzvmP58CayXYU=; h=From:To:Subject:Date:References:From:Subject:Reply-To; b=EHNVQ7BOoCIiPmfxsxf4bns7gRnL6IL8zAQ5pZcVEBl/py87/UPJtqsLGrn8B1iIuJH4vjozqb9a/AYz96z+fkz6ckopPPxDi0xFyX/joYNAqer0nVJ/2LqfG5urcKQQmuAkgoYi6xs57y+5Z95B+ZEWfbzpmq2htDmu+2xBPy3oYp8fGdXUyM/z2MiejkRYUChIA1AZylA4NwG058pvgMv20IYD/75Qfy5fhA3jxAYpA2xdtcoQVHnCaWj8HxnjNa7Hjoc9t9o5w2rC8kxuYC2PHGTEdWZXUj0AbRakk1SMs2Y6G36lufjazV6RMmZOWRisQW5Xw+XyK/eE3Z3nqw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1733963998; bh=tMaWD4evyoRLS5p8CnYWlrCNNa17KS/yt0a0XcWC0mj=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=PS9ryb/gINeIUmm1nzUCvSQqTZFuUStwmlvdZhhrm6er8nEYx9OttnomUIdE0GNe//jW9kEX9AWmJ2aKneJy+Zwtq4H3fKJGQNfcats++wQ5z9hQ24QViJTpnW8bF1noKqSjtQJEq3Jr9WtTsQbsy1rQ6m4XzkdPAxiKypju/uLdl2MjRUd92voHhQclH7moTqEwhzhsZ94PqHCX5pI40/8kTkI06Rowyz9AGXTT+McHetekEV9zyQL8Z3xf4++ZlZivF0R+A/4M08EbC8CFzX4MEVjqWyBtkcq8ZAMB5Sala6kRcqL4SDXDInisErXQ/ML4fUD2rEknxK1pAuXofQ==
X-YMail-OSG: AR4T4ZQVM1kiTP_wAhOI3B7WsZwgmUrB_SjdDvdUkmn7APEErVvhAF1szXahKV0
 9ndi4iHy6SsN4pmpDTy8umSAOsBzNysgkczTdoMZhEiGjREgMDxGbUYEmwnhDqPVtKa1NsRbVdL4
 watu7MCG0Er9C_DrEJ2YXvYiSGPrSNr0kpyxmY1JKpYy9CAaCoMo_5RdJwul.r3pzCiSmA_k64eg
 Hd65MosKJu6jYdxCdm4fwuFu3XE8i_VqqYGCd99WAFandKXhv_okCQTRBLNrt7J6_5lmREHKIKAX
 Cm6d6sVWjQ76lXlUeAmExWAdE9CToy8B9FresAF0EzyKLwRC5dQzkkxR6UzSkILfGQMsuv2alMEA
 oN8NTDpgbT.sf0nLNu7s..YPHsfLUwReJyVp2DEw0SeRTMIt38uoyZXbUmDM5x6iWYh0xRRsTgZc
 nfbcvTCh3fKJtLODN2M0bpzE4ASKxfBo8wkX0aOQnMe9DePTspYFbIWvKSfz7ioQstM7VIjN0UqC
 FIkMh367vOTlq0fUxIar2D8F_I4UUKBGvXGXDWO7D5QTECWIjmW1JIshuG6BfmVce_ZYT.Q.jfCN
 4CTbjg6GcUg2sIIy93DvmRby1eY.YdnGZpXIsd2nB5FIYnenzTE.xeBWbv_ULtfplMQxYZqFCzG8
 tZCmshzFC.zzM0aM_Wq1._vwRnLltzg8w8Ptwec_JVNO4OfSfCH40lqEp1teGUYaNa59QWlYSl4i
 OHbPTQvPlsadKkzQprpCxfwljoRAV4oCX8N1wtgH.j9XDiMGs1cgPtUWI5an892q1aevcuZpRy2e
 CuNz8isOlIzn1iTrMqUY5pk6oGhSvRDlltJ_Q36XVAY.pIpYZrEUbVh9e28MZv1o_U4WToDN0Z55
 FjbkD.unl5aqc0bBQznVcrdxtFInVRFaVz34aJcjtj3A3HcaZk1Qg33r_gw8FfilepZOKkDDLADT
 UKAEwJ1GzZwxNCAbiW8JIa9LQu7q.xFo4_v.Br3vAOkRlcGanUtvJDjw9GDKG8RAzwCBQZ4_A50w
 3QENrIEiSgLpuFj03rur0NlvWYUH4NGA6HSmI26tL5VKsAo5kV3HiWQpICf0.Mpy2bp6TDqVaWj.
 0N430q3v_MPVx.SwoD4i373L_2GmwLaGc.Rft8OySQPQTHOBavGeixW9imXhtQp.jQcaLw2DfEkT
 OgXv.FDMgboc37wpzu3FPa_QcvaKCeOF93XbpxmSSJwYohGJn_lVkQl3MMvLMmhkyWPnH6pWxYsS
 DhBcyAsIUzdk2UOIkl02.YArnISRKelp_QfmLk74CNcVuw99g_pqQd_1sN0hGc37At4UuRbucaxu
 wZD3TOfqNU7hEsOC1GLzCmhf.A4djNs9nJFYmw501mgmadBBLaC2i0TeWs9VQB27j6n62h0jUx5A
 CRfom6ttVleHDicpWl1qPyWTIr80QD42FU3AKoG0MhccWg6OcNehWmDBtrFo2C8L6.hCrlM_ChhV
 .m2lBSalxBMKBw4.rs0mbdIoNEL7W.orLyLNncpO1v1J9.6lIz7D3DhNQRsnwkeaE9KnPVwVPPtJ
 5qhj8L6pkIWTvOFU4JX4nuyssvKXg0Ezv0jAuxGmVzUwiD.i291AUtNLf8JgN569e5cFlwXw7oT5
 dZlSDybOB2hB8VT_r6kfSbpmEy1cfHs5lpL9B0ZXVPw4uugLj1Q247Wou6_HsHaoyM5.VS3ZNeKy
 tbdjYT256rp27UmWv07uXKpmCbEpNAQZrlylkEQrAndKKFCY5MJ1R6sBicNsEabb_wyfNYwboRl.
 SsKPF5b7EUYLpjYbSBY0i0NKenyp91VARdtiT4i4aqfTcFnqA4nsaLL7r.ZG5VdfA24duP0YZqIJ
 amncHLihzpxMUo.jwZUpTiOu14vOK5S3CmdsU7t3rzWLcomD9aJ_MJ2TMJx9irB2FxKTiDr_VQWb
 4YwNVbnZtz.KHTa.3YWdwKvdyc6Qy0AvFN9XbWVLOaIF4dqxEqEaoDIXKpKH89uyaqDuOGyWMhep
 MoSzgSup1rfiPEmiE7aIkEqB7t2Tv_EpBM3xndv6XIMzOgakAorg1Yn6QI4dWjcaC0JPL0q48IVr
 prk4fvz36dRELbeGvp4oED0Cq8Z7c4q9D8TITELWOtnYZ3kk3SdGsrShoPbQ.4YCZ6IsDr5bL4iZ
 kyM93xYx39o3CsjxP1L1VFrImu5IAx.8KOMOpo5cPYzVje4mGQ..YKDc6m6WESg4juoX2eafQdSL
 MBcb9t9l86nS2q6ffumLmSa67fwpoKolXR4Stu7pHpg.E_xDV2SKCwxrbDN9a
X-Sonic-MF: <bluescreen_avenger@verizon.net>
X-Sonic-ID: ffed05b1-e867-4d42-9e25-228693c6fa20
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.bf2.yahoo.com with HTTP; Thu, 12 Dec 2024 00:39:58 +0000
Received: by hermes--production-bf1-66bb576cbb-btnfh (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 0907e57cbd5fe8b7a2c3ea64e8aa6ad9;
          Thu, 12 Dec 2024 00:29:46 +0000 (UTC)
From: nerdopolis <bluescreen_avenger@verizon.net>
To: keys@linux.kernel.org
Subject: Submitting a key
Date: Wed, 11 Dec 2024 19:29:46 -0500
Message-ID: <5341712.6fTUFtlzNn@nerdopolis2>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart2424799.yKrmzQ4Hd0"
Content-Transfer-Encoding: 7Bit
References: <5341712.6fTUFtlzNn.ref@nerdopolis2>
X-Mailer: WebService/1.1.23040 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol

This is a multi-part message in MIME format.

--nextPart2424799.yKrmzQ4Hd0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEZ1jepBYJKwYBBAHaRw8BAQdAo5UHyaesy2u3KcgO/wL8fOt19t1gNYDv5z6d
w2+M6EW0K24zcmRvcG9saXMgPGJsdWVzY3JlZW5fYXZlbmdlckB2ZXJpem9uLm5l
dD6IkwQTFgoAOxYhBGMuynHs3sOQa4hWPosQnXLjbowDBQJnWN6kAhsDBQsJCAcC
AiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEIsQnXLjbowD9rIA/0/Vn6oz+sod8cEJ
NBDHTaoE7gYi96botY0s6DmzXduwAQC1au6OVVYNxvrkqWjGyMWFPb5lYXRnk1px
8X28cR2mBrg4BGdY3qQSCisGAQQBl1UBBQEBB0BvuNS0HrYam/Ke2FWf5Q3mEsSY
pdslugnXwMcicCzCHgMBCAeIeAQYFgoAIBYhBGMuynHs3sOQa4hWPosQnXLjbowD
BQJnWN6kAhsMAAoJEIsQnXLjbowDEu4BAN2kP74bdAbUBT5cMfPYUG4r8VtuiXPt
0P91PjlH+Ob1AQDA7z87Xb9ef7AVHIG0YVnJcvFCtgcpzdUeBHfckwohCw==
=qBD9
-----END PGP PUBLIC KEY BLOCK-----

--nextPart2424799.yKrmzQ4Hd0
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: base64
Content-Type: application/pgp-keys; name="export.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FWjFqZXBCWUpLd1lCQkFI
YVJ3OEJBUWRBbzVVSHlhZXN5MnUzS2NnTy93TDhmT3QxOXQxZ05ZRHY1ejZkCncyK002RVcwSzI0
emNtUnZjRzlzYVhNZ1BHSnNkV1Z6WTNKbFpXNWZZWFpsYm1kbGNrQjJaWEpwZW05dUxtNWwKZEQ2
SWt3UVRGZ29BT3hZaEJHTXV5bkhzM3NPUWE0aFdQb3NRblhMamJvd0RCUUpuV042a0Foc0RCUXNK
Q0FjQwpBaUlDQmhVS0NRZ0xBZ1FXQWdNQkFoNEhBaGVBQUFvSkVJc1FuWExqYm93RDlySUEvMC9W
bjZveitzb2Q4Y0VKCk5CREhUYW9FN2dZaTk2Ym90WTBzNkRtelhkdXdBUUMxYXU2T1ZWWU54dnJr
cVdqR3lNV0ZQYjVsWVhSbmsxcHgKOFgyOGNSMm1Ccmc0QkdkWTNxUVNDaXNHQVFRQmwxVUJCUUVC
QjBCdnVOUzBIcllhbS9LZTJGV2Y1UTNtRXNTWQpwZHNsdWduWHdNY2ljQ3pDSGdNQkNBZUllQVFZ
RmdvQUlCWWhCR011eW5IczNzT1FhNGhXUG9zUW5YTGpib3dECkJRSm5XTjZrQWhzTUFBb0pFSXNR
blhMamJvd0RFdTRCQU4ya1A3NGJkQWJVQlQ1Y01mUFlVRzRyOFZ0dWlYUHQKMFA5MVBqbEgrT2Ix
QVFEQTd6ODdYYjllZjdBVkhJRzBZVm5KY3ZGQ3RnY3B6ZFVlQkhmY2t3b2hDdz09Cj1xQkQ5Ci0t
LS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K


--nextPart2424799.yKrmzQ4Hd0--



