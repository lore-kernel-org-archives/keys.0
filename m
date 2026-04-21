Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAEA2AF1D
	for <keys@linux.kernel.org>; Tue, 21 Apr 2026 08:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776760819; cv=none; b=CNRJ8Pez9SaR6oJnskqAGmklyqpUhd0RajkZxS6jsn6ovuwlVMHfSvyhsj1yHpcujNUBxJWIS22Ekigy2XC06WwXVSP7O5yBQ5MG8qFXB9pBLgWPhPP8YTnaeEqo2ovK/qtMBiwhxm91MxREldyu/cMMXGzByzSvh4VkzWZ4jFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776760819; c=relaxed/simple;
	bh=Y33DQRVKAL3x1oMBV6jhdK0B0+kdIR6/ZqynHKY1XkI=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SWyurCt0h2Zs9r7lDpAEHDwsqiYUKzjmnWqYaepRt1759dRMc+rMoffLcyeFCW5LT7lgEFUld34ncBlrUGmRt1f9NqxhiETdP71gGf0PsxDgOMW+hS9R3zAHvfYCKTkt52/tQjUaDmQhSw5pIBDvRnyHLOx8kCulMC8QsfkCPIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjMAZ+VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjMAZ+VR"
Received: by smtp.kernel.org (Postfix)
	id 0F132C2BCB5; Tue, 21 Apr 2026 08:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62293C2BCB0
	for <keys@kernel.org>; Tue, 21 Apr 2026 08:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776760818;
	bh=Y33DQRVKAL3x1oMBV6jhdK0B0+kdIR6/ZqynHKY1XkI=;
	h=Date:From:To:Subject:From;
	b=GjMAZ+VRLl43gOA+3tlbJM6KHFGM46a/xEQrpHEKcSAB0ndA3uAeSGkEO5sKf03aw
	 wASdKyvoaWOZXUgdGgU7vAdul0jjmYSs85KfJnTw5DShKVhTVtT7ZhIKjCyUs/zNxG
	 ousZnX0qb5nbJCw4125E8OGmL3ywzoRYCmT7lLDCYmJaRDbY7ZMTpIUThTyKQ7LW2Q
	 Lnn69Y0JIVzkNhhdj27m60Cw89ft9RnowlIU60ZMy+8LUcRMv7RPOzm+pc/9PvpBqZ
	 ncF9Uq6gxgYrDYcooN/GJ67vLGspKz6x64LQLrXdIgySNIedrOB5KSbCuRDyZcWx10
	 KFTGZg3rNisUw==
Date: Tue, 21 Apr 2026 09:40:15 +0100
From: Lorenzo Stoakes <ljs@kernel.org>
To: keys@kernel.org
Subject: Replacement GPG key for Lorenzo Stoakes
Message-ID: <aec18mJotTlfq155@lucifer>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wzhdbmbek5tgwa6j"
Content-Disposition: inline


--wzhdbmbek5tgwa6j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

TL;DR here is that I managed to lose my private key, and need to replace
it.

So my old key, 5BEF5562908102FB56727B7CC52D7AFE85F25509, is entirely
lost. I have a revocation certificate for that which I will be issuing
shortly.

The new key is E7F417BF5214569E89D04F46CF9DCD8A81E27F14.

Due to losing the ability to sign from the original, I cannot cross-sign it
with the old.

So to establish the required trust, I had the new key signed by people with
the requisite level of trust. I attach the key here.

Could you please remove the old and replace it with the new?

(Apologies for this, I have obviously learned some lessons here :)

Thanks, Lorenzo

--wzhdbmbek5tgwa6j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="export.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEadd9cBYJKwYBBAHaRw8BAQdAGKKU/Zt5P5IEjxPMBAZAtApcNA1yiTIgvwKg
Hd2+Jre0IExvcmVuem8gU3RvYWtlcyA8bGpzQGtlcm5lbC5vcmc+iJYEExYKAD4C
GwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQTn9Be/UhRWnonQT0bPnc2KgeJ/
FAUCadd+dAUJCWYChAAKCRDPnc2KgeJ/FOHwAQDwQayM2twXa5D/CLA+DSGGYKrE
AVkVewL4Boo458QCQwEA9OwJMzYyUgfY9EqrELQehQhsr9cTI87Ih4trg66ChwKJ
AjMEEAEIAB0WIQQb2cqtc1xMOkYN/MpN3hD3AP+DWgUCaeZwkQAKCRBN3hD3AP+D
Ws5zD/9kkCnUviDx6JcTGFMREj4PJ3IA7Tglf1Ran0LSr0cZRHzUiC4gNB6wnm+1
JsTHcW92/6nV9Pf335ikn9CZRMtPsI0SNPD0hqlcQYUqWlHsFquR6cfcPMWeMw3s
r2FT+mcYxmlLEpR7AXrjwuU8bIkJlPL27YU8PSe0nMH+Huf6LAfI9qwgM5g0QGDA
YoH+ngrnPsYodNM3lOjhFe7oSgRJdyOmdgdM69/OHUQiinhRNsuWnYwyNF1YwNVn
vjXPFsf2ZVq0a58jhK1J0jRYA0iZtnlTaXFlcGrIvWkRitdSYfB9ysSTBTE1pg8l
tjm0npf9q1DEVBVkU9FZTKesq3VNazjuLn/vJkd9D5j5YaIX6jP3IqcUw/qj1th0
dnPatMyxLYA04llhjRn+QlDf4MeHX/+bZGZAly3DV0H/iSu4HG0kz6HT3ymVe1ok
RXOYhyNHpHcvw0x/1Kw2atdfZ/2yNjNxpxPjBMYkMAg/asPRWt6HO9d15tn+Kpel
p2jeAICzWCZYEJsSQo8sSN6mQLWpx0JNbTPn9S5Fwsvmk5fZEOGqO+nIE0LvZhES
QOm8gGrEtk7Xr1UnZJln0nDxkiAR7YjAui4763SsgU055YbdZJFcVzOjvmSJytT5
Bs12qMCW6xmtY7/pZx/jomZXaMdhjhmFXtw0Gu4RAWZlT7/xGIkCMwQQAQoAHRYh
BLjpbogMSkDDwSVaqMUyOS3m2nzpBQJp5oduAAoJEMUyOS3m2nzprOUQALaclOTc
sUekx/5gKhZttFZ8BXnv1PeQqT9CChMp+acELvSMPUDfP9lVzSv9KR3I/lMIeeXF
bbBynO94raNYcmbjbEyAagJUxrp83OE2032qny8LMQ9rX9YN6a5MZxTJkeO3FlTR
RMVk04XB26GYX0zsQQSMkTJMZrfHbeNSlb7m7rmNtLxkTn4YTvT0nrgjE1L4nl7k
Ivi9btCmlmRg/rIheb80vKr0z+gORxxlwyzLCdGrGLCXBtPpywtMsju6NAMJHMBK
1BPQ9J7HXKty6QQbraPIRnoQAubbB1arZn/cZec6KWJT60Uw8ZIyIPbHqPLVQjAL
C4H0wGbxPZ8HBz2NHCgCqtxNqfvrn0HLQtg4GRnoabQlGSvkvBFsJgoBMVt/BYvK
nY3svxt7/a/oTltexMN5yF+dkQJArJjDpQPF25yxGwsgajTCDQt4h5MMq01EhMG3
ugA9IHgA4gn9sLXfwhnEi7Obap+So/kJXc+dpT3w28WQnjTOTn767+i35iynj6lm
1MPYiZ+r6sYuEUlxfoVRpiaDW1ldEkt/VaFlzA9xcLxWbzr12NnvdacMX2e+9CDn
/c26/8o2WDwd0PTvClzCalzbaBvJQHJTGVdnL7LES5Fz+kHXKALtxnQFlY+6fSpH
MTHIXscBt6mWwaTLImIEa5ImHA9QCFIRNqQLiQIzBBABCgAdFiEEqUDUNJksLo6Z
ED1QIk+n58yCpmQFAmnnKlIACgkQIk+n58yCpmRb0g//VSM4pNLNHTmeBtxALI6I
4BTDkKKv4fROFyVlMNRGP0p34PwyAQryrUuESTQoqcx3cD+PHCe0qxRrXFY5nTMj
VIXNGHysDV4V/5YIrAwHmcHS0hGrrTcKQ7Xaj3kJPjIYanEmN5PlUd2bqz08bJZH
GhWWg3qxdVgN3yPz1CDMQQyQ2puLWsTKB8L+H+RnMq2eQqTbjgfGskKN8GKXyBCI
EQJbrSKUsK0qBSFIZjx66LIovwKzq7ktSMdeD1+ZCSvVESeo1O81YVerrJRtl5LC
ytl7qKLWj6PC2b4OEXS0W/NDs141w7x+ISEmYdtRXaB7fU/N/bCSrdW6NKaH6iKF
BZnHDnos3Frx09A5nppgZ1E6ISZLpDF8cGRa0HY8UH3euNqffUUE1GolLpqvssAn
/7MNvfC/m1DIv8fCj1syy+ImGkkvvIKKqd5eAWBpyGhz/diRoAWz9IM7ViG8jlr8
DY1MRMR/b4eip7ZZ0PQ04PviHMLZnDod0PSpd6tEgUxUeC7KXtmruYvWgqn40ABQ
ex64WuygDmR1YxA/2jYeS6fcBYE+EmQV9GChMYtG2PvvrEf9ktKxkJ2Z5S+JG7xy
IDJUNIQ//vgQdih6rlrqhTfkCJvhD+XIJMf+jsorWSGifP6Z5zfVSp1IbSFjHCsB
arkySHOIvzDjG/GaZ4WHD9O4OARp131wEgorBgEEAZdVAQUBAQdArVCXenEQ3PDr
8i3VveEzepEOvidPylFJqJBCH9Bo7xcDAQgHiHgEGBYKACAWIQTn9Be/UhRWnonQ
T0bPnc2KgeJ/FAUCadd9cAIbDAAKCRDPnc2KgeJ/FIIbAQCd/eUehTnhgcReEgar
ppXTn8R85ImyFlYDav/SNdL4SgEA6UReSXBIVkF3FcuGiL5VmMr6ChGzkk9dP0Gk
96d/hwA=
=MkIX
-----END PGP PUBLIC KEY BLOCK-----

--wzhdbmbek5tgwa6j--
