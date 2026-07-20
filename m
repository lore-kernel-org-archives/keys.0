Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A758F429039
	for <keys@linux.kernel.org>; Mon, 20 Jul 2026 21:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784582704; cv=none; b=FVXiY6DVuBL3GyQG95NpJcg93B2feOJLehNGjjcng/HmlTwaQA/OsgVeqbwdY8Fw6H5B9eNg8bt9YFnF5iMLM3UgVL1LXWSpj0GPdUpAuxTV0yGv2NbHKfig4suylk9ONVIPJgI6xsxeKCzVWUNSlddmNEd5njAr6jxM4/OR5+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784582704; c=relaxed/simple;
	bh=eESDrdnx3mCZJvXnQEePYry58CWkP32oMKgD5aBpzrg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sLp5ga6WxOZfKMaitSr8M1EKoPI+ZSIUzGEBLG9L/UDIpn7lzmMcwKqVRb3vEUSobiVAautvCJPf2rb2JkJjgcYPMhwvnqNyKf1JHeKLwEghrpb4nhjIuEz8RlLd2TLwdib5YFON1H5HoSTCnJmIMJLbAC4BjyB5xDS1eeemCuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DefhqChQ; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DefhqChQ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0961E1F000E9;
	Mon, 20 Jul 2026 21:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784582703;
	bh=Zk81qpOKFMNpsWh+rYPY3BsYgBMaZ5cSL1dNqOeVOrs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DefhqChQI1bDbLAVtnaU0HczbNRLPoVKJ6zQfoHqnIT9w6ebvB8llWCYzJpbkr5lu
	 QYC7u9IcNHlZ0aPbaq6bsEBMNQUvd3oGQCMYkbT3GBJEkT6uSnjscGy+kSPA9bIdxU
	 18FOKXLC3d4Om+/gIdEGFTP3UDFmmftQ4sVuMtKq5xEsmZqyeb7bLzTe9V36neoQIK
	 r48w9XJD7TXVZf5qDH90uafR+8y4wwX4yRUFVVzTEcjuyv7xGqhKzGIk/O6F5VPjhG
	 kReUkW1hSGzEt/FdQ4S8H2XEjZaboNlnww+88tnA6FPp8BYwhAe+LETuvL2W6MCtu8
	 1ypqCT30e0+Kw==
Date: Mon, 20 Jul 2026 17:25:02 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Eduard Zingerman <eddyz87@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Update key expiration date for Eduard Zingerman
Message-ID: <20260720-dainty-oarfish-from-ganymede-5dd0cd@meerkat>
References: <cd3d8cee07a3767a0994d19cb767bd89f000a17c.camel@gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cd3d8cee07a3767a0994d19cb767bd89f000a17c.camel@gmail.com>

On Fri, Jul 17, 2026 at 11:25:21AM -0700, Eduard Zingerman wrote:
> 

Updated, thanks!

-K
