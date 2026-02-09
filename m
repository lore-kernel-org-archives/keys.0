Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1CA23D291
	for <keys@linux.kernel.org>; Mon,  9 Feb 2026 16:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770654305; cv=none; b=kOMwdPm/yvMV9Xi9lhYUK8TWYIUCJkYIO+cvRZfTHmKbioCG6yW/BbgW9TWcbg3VaZ/sMsu3D/Nc+lU4g3ZFRH/pXRU6vfZfB12USBrY8NfGAgRZOWfcjfw3HJfwpteR3359nBktsnPG2W+7TH/NPnqYSwNeIWbcWy6R+r4dl94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770654305; c=relaxed/simple;
	bh=qHgH2PMEmT5DTAUQzctuO8o287KaJlJgNjoHBNfdcTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U6WRORY29NFqUls3D9ocswtNqOcXSzqrfzyGTVD0DFd0i0t2a8oCNYoXUG7dzZvnJDkIXPUJG+I63bpsxHCoprAQAYWjqVw8C899PX1XJ7dlNUv4lgfg55LDIG5E+1tCNXSLsh2jg9z05TBnvPWbAhP8XKYIMJaO9TlhLPmtZzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUnQEWiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUnQEWiw"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB9BCC16AAE;
	Mon,  9 Feb 2026 16:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770654305;
	bh=qHgH2PMEmT5DTAUQzctuO8o287KaJlJgNjoHBNfdcTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eUnQEWiwbxLSZzlkTKa9Wbjwj1IUHUjBx6k80XyvsSzJFASVkJY889qi9cmnVF/E+
	 itfVzAU5scdycpbx2QZhC/lxe0PASFoFS7AKBzes/+jEF186nFSpgBCSVT8MPAKjgN
	 enQIDckmNsTFtBX2FnMXYX5U8k/I576Y7AROJANxHpFtWkTQOIPFe/8ypREGiu2l9P
	 gB7Ccms1PzYKaOCw1jLMYMPyndmruev6JN3RzVDW0RrvnrliuYwFfxBAdCuyswnMgG
	 yX3Q3+OUDx7g/ebiGfZ8QUhFJSBriQnW2d2aqoh7ggf+4zSdJRotZP8mR1LhWdjeUy
	 nGeDCgyKUdZmw==
Date: Mon, 9 Feb 2026 11:25:03 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Andreas Larsson <andreas@gaisler.com>
Cc: keys@linux.kernel.org
Subject: Re: Key update for Andreas Larsson
Message-ID: <20260209-pastel-meteoric-bear-b243db@lemur>
References: <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>

On Fri, Jan 30, 2026 at 10:06:45AM +0100, Andreas Larsson wrote:
> Hi,
> 
> Could you please update my soon to expire key in the kernel keyring.

Updated now, thank you for your patience.

-K
