Received: from sonic301-1.consmr.mail.bf2.yahoo.com (sonic301-1.consmr.mail.bf2.yahoo.com [74.6.129.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E981C5789D
	for <keys@linux.kernel.org>; Fri, 20 Dec 2024 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.129.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734664235; cv=none; b=oniISPQr6aekW5rhgTD6RGNpH6Ixxov9M/LQUDGhbRQiKjafs2m6rqY/gOoWTMgsK7M2ZoY1LexxsQrv1tW2qVYSnNs1nRYSPZuV5bl4/jpeQN56oe+FZ5irt0H71p0JVZh+g95ud2mswo6wE0xDzD5beN2aTCkZbOjmEjwCeWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734664235; c=relaxed/simple;
	bh=Z67LLhiGEfHbf0ypr/+TrnSBxMbMPGSaNXujXbptSS8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VJwl81POulMGTOxc8SaBspS0Rpe9wauOtmMoWVC3J15S4nZ7DFO+9eJA03vqfYlgf3wnjc1vySBWF/rPvOjOmR7/7tMHQ/cYiGCHkyvXcAM5vhjc1/8YVWHiY+asulRFv5sBwUxiYda/gd9SNxYoFwBaaTyrddDF37o0yxtbq78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=verizon.net; spf=pass smtp.mailfrom=verizon.net; dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b=fCTNBVEy; arc=none smtp.client-ip=74.6.129.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=verizon.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=verizon.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b="fCTNBVEy"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1734664227; bh=kObaWZmWq/qL+Nnt/okA/F/QY8atChcIM2juK5dzF3Y=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=fCTNBVEyQtZ5RdMtAsiJ6+Ho+4F8Jjl62ImIbTxze8+0qJvON5zW/wMSbMzAPvme3J627DwLMXQUQ+HrxRnFaXhWn3N8t3IZZW464dstSQkHnwFqWLeJRQySRjOJ+yZMRU9ngdeuw5Z8DyKBswo/7v4cfpE1P1q5bux6Z/HT7uXL4j8uLM+XoZWiW2fzF31yKs99mOLRZl4smIJ5Cr3g13y2js8g04AqtcLyoFgeEsgdQcCYKAz9FUgVKCEgLZ4RCP/h3g3NUP82qsl3Kr4+nAWhL4EKRgV89NEnKz1b4uiLq5/qnCOp8SgVm/49joiC3PKsDMH6pikKdLO+IOnHzw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1734664227; bh=wK51hGbApsb2yarbXH4ohtdxYhKk0/ZHnvNKOEQpquc=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=ZEUDs54HgblIoqwTwBlLWE6iZ8Cp7iwL/e0h3ov/6+7PcavL2XvlBSRXZiOiu8ij1zrrUPtzXuVf2eqqzUOUpvsqO7Ark0EqSiy0GXW575cwO+C3HiTjF9ybNVpM5c8kWs8swMeKOECw1JTpDel21yIawlUm0Em1ZsJxCe9+3k2XDF5JMbcf4Ao5ppUyNColT5ftCT2YvA/iViTayYH8eINIZ0dm3AH6FV+Hl798NLdr24eOfP/9H2QJbWk0rkZLLkrVkkyINgtjbSga79jIuEx2lIHczAsa/y4SIM8IunkYQIIV7bdsiGnyZRhKde0yGChmOVY2ioGKUFTLipltdQ==
X-YMail-OSG: wy9CvqsVM1nYwl8gf1kcIVNKXd7cd.t.Xitne.qwoZzvJYtI1RW6JEmmo_akcRj
 0692IGAjyUHyK0ojWuqvkcA71BvWkVTuDRZa5d9DF8045zLb0rENjP9ofSyY9P.2W.II4Op7eZcO
 WPC5BanshsVRnPMzZTZbElkn7e9yFm8YAgqe_qZHVb95Sr35EdyZCMJuHB6Z1OtWne._HI_cyuqF
 DVwIPH9TtUzD6spjTfJpoqivy0QUv_wSrqYdQSpOkNhpeHpvMHYLKmr2xOCiZ59BMU1_7U8Fx7um
 S67uxjLn3QhCtum7K8ILLlpuSjo42_qRe7n85rKERmVCNtYLb7OAaST3A3zMFlsQQgM7opuhTyFg
 7U41uq.SqkDZh9b_ToS68B_0dyNYAba7QXIYvdt6pPxAkqMutBTZrHvePT06P6ET6AVAjiQChMk3
 apfOSyFfZdaPQ2bF.3qsa5Ft.M_70IyOLwR6RKMV37gZeSEnkvLCz8ubNCZGSiiZPzTnUkSFvs55
 m_ypJCWtkSyBjuz9X4KLH33OrSbYBkXmQuYhfTca9QkfNVBrmFLWNpOhSzco.OCQ1_Y.emfCuRO9
 W5T1PxF4ZuiEIjhOsOOl5uo_W3xKoztP0zM939NaFNFHRhZlG9YgG72jxf.srNAiVZcbM1NwD5BK
 4PhGgBvrcefxDIvDk0gyjtJNtsF.i.immZfPCot1jiY3VhK124RCCKF3FkBW0t6d7mZVIEwCezLN
 SiusNmA35Ci7bOdzaL9BgJDHGK1fMlUpTlN_bYIfU53MiR9mdp8GHu0VrkRXj5wbQZvguxXZDzCv
 xMHSV36s56ImCrCd.wi8gYTy.F49eKNfds4KPHj_OKPZTkexjqjTXE3OdIbjTCpq9qnbL3ZvAPsV
 U4VzfypMYjUtjIoCUrYzELROZ4_8S5jthUuLMbItGB.gLe6mKQSkXOBf5bxC5M.xiq2mnllSSZ.w
 A8rRbySdv5xWf_Zo71tWaa_C_32jLtMk.5MGIvpdw_MFhvI9ZbeCNSwigS8uBttTbLRJWNRAk_71
 rQhr1j6t1waBguo3jw7UMgDnA.QyIbVOQ9YWWAjZ0F1Vz4XZWP6tzn7DqbVqPhR_q6fYaJ9XVwR2
 CT_oxtBJr3YQHpJsZA8_Xm3EyUNsezXsAh0N46YQ41__Q0gy6ITI0SfDIUu_2iCncHGqgYexrM7z
 I.VbhLiGDKa9zzMUq3RXR9fjaOnQO60oLc2I064AuTCtoTJV0PUHD3YjMyr5tV1z.vwBubJMqCCN
 RBBqfxYw1h6HcV2tDmpgJxsW7Vb0eZC6G2CrZ2sUCJgGMZJtcrxsCTvT42L0qzhNSwUdMNE29gxg
 QBfU2LWdP5KsJYjWn4e7sWQ9oHchOA_EKj__RXHW5gnq_gvHKHk9iduewaFK3uiyjKAQH.rBEiH8
 _vyf8W52xQXzFMKZd3nBQ4L2ZZZ11.Weu.OH0GuQA9TlSGPZrmqLp9ECuNewByXIkjwUoEzN9Z6h
 wTRf5pjCiJvXq40tnFDJAiT8TzCNKv4cxZPJig0nl.RHYdv7.sKT9iUpwmlZ6RriluCmkG83NW6f
 9gWXyyK12gfUpGLLi.uh0xpnR6Z48MzmYUMrxTdSQVqBoPsLsKn1qeoyRrVJVUF3QWXJj1onyNLg
 .2HRchBd.Hj5RVxFrCSm0ElFQptCxzNYgxiAGPNgWbD.ZDwFP1Y13O5WGZAifAmrLI14.m8llGkE
 dROpOn02uTxsM6DkqPK_tt6wIxaBbYQY95brg7CMwvglqvm9LRUHcg4poMXh1fWJ7XklYwJUPpWC
 IGRZGjTpnxXSo8Z8gzpX9msew3EAa6l_Z1IcbV0KJKFQt8GR5yvh8mDnWZQUREpYMq1JVz6YtLHZ
 3ObGtrtOe6PH6UOYGFu2KifIodcG.fibC32lpP7vC2nIPOlZaZcBtH_LmR3npw1msktJ0AoyJ1kA
 0fiRt1jV225ikPGdDQG7BrE9GKOId8TCq7vquIjw1Whe3pYj6_M16QKLvvNyGoqjjww6faA.AhI0
 OqZ8p4p0wUYT7m2YIBhOlI7.IEOaJUdenvLLlUDVI4v_pF7xhNPlRtkkaj5luluwN6YGVoUD1EDI
 6AT079cc6vEk2e.7SaU8N7.fd1oIR5D03Bx7W6wyAJLWevCD5_0J9KfB2Y68505bQeEtR9xgqC2I
 0X2sggXRlC0Ef34KI2s9h7JvFvebOZtUztvi5Q8EnWdIR4i0s6t5kDqaStecyKS5SWe50_F0x.Tb
 LH47_sM8Cap2tt7yfQkMn_WoEuKwPFmyP_8aM.W7FfHnKWim6Iepb1c2S9g--
X-Sonic-MF: <bluescreen_avenger@verizon.net>
X-Sonic-ID: 9341fb50-962d-4fd4-a785-5b44e25b3863
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Fri, 20 Dec 2024 03:10:27 +0000
Received: by hermes--production-bf1-66bb576cbb-h2pjb (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID ace2aa3641cfebc081dff91830a99863;
          Fri, 20 Dec 2024 03:10:22 +0000 (UTC)
From: n3rdopolis <bluescreen_avenger@verizon.net>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: Submitting a key
Date: Thu, 19 Dec 2024 22:10:22 -0500
Message-ID: <3957840.fW5hKsROvD@nerdopolis2>
In-Reply-To: <w3loqlyzzq3ehu3grpmc5wrxp3iiqz6qqabgkd7yu4hfavr2f3@fbu26ato2koq>
References: <5341712.6fTUFtlzNn.ref@nerdopolis2> <3223611.fEcJ0Lxnt5@nerdopolis2>
 <w3loqlyzzq3ehu3grpmc5wrxp3iiqz6qqabgkd7yu4hfavr2f3@fbu26ato2koq>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Mailer: WebService/1.1.23040 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol

On Friday, December 13, 2024 9:43:09 AM EST Konstantin Ryabitsev wrote:
> On Thu, Dec 12, 2024 at 08:56:36PM -0500, n3rdopolis wrote:
> > > There are no signatures on your key, so at this time we cannot accept it into
> > > the keyring. Please get a signature from at least one other person already in
> > > the keyring and resubmit.
> > 
> > Understood. Do I just ask around for someone willing to sign my key?
> > I am sorry I am not familiar with the process
> 
> The usual process is to ask the maintainer who receives your patch series to
> sign your key. Your key should also have a name that will be recognized in
> court, not a pseudonym.
> 
> -K
> 

OK, I thought that the no-pseudonyms restriction was relaxed. I am sorry.


