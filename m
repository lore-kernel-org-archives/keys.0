Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC2614AD19
	for <keys@linux.kernel.org>; Tue, 15 Oct 2024 13:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729000044; cv=none; b=MlaY01QDhGFgaGr35oKWmCg2qfOoalweJKbsxGFs6mjGM0obpYMV5JXUkFrl6YyIviuGWEZTPnCs5/Fy8euj3fVi3cAfmtLYpBo7a6cIWOfPlbssil3d01F8C+rScQygcE9+Hxnqj93sJOhbFnGbd6Foxp3W7igrL+bqhoURcOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729000044; c=relaxed/simple;
	bh=CCZMOjUXqmo0so+CZYI+W1A3CsROQewzxeMJTs9pzUE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gUQjYWOA7un7V6F67e+TuWKrZEnLffCrW+Kngx/383Xp+YxSVKv5LmTrwEfRQAGYQLbJCo+L3ZMa8Ykg1BGFx59rZM6i/f7VJQM050Evy9yicf269NOROxhZcosOLnAp7Pu4osNlcdPuMMsgeEMKaFaopnAKHGtjplHWSUFeQw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=BlsVFyKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="BlsVFyKD"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 612D9C4CECF;
	Tue, 15 Oct 2024 13:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1729000043;
	bh=CCZMOjUXqmo0so+CZYI+W1A3CsROQewzxeMJTs9pzUE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BlsVFyKD1KWu3+4dweuhpkPgsuHyBOEeaenJI0moR5a3yyjbG77AQvj4LQRol378Y
	 DqQlGrHyZbC9WcG+SvX1lGVtSYLbisw5TsTY4hVh0G3TQNjk2LRwY97UctueijY0RQ
	 AMBbCgUSWdSizNjCgsgRFxFzIA4aVfBpG44bIg4o=
Date: Tue, 15 Oct 2024 09:47:20 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Madhavan Srinivasan <maddy@linux.ibm.com>
Cc: keys@linux.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: Submitting key
Message-ID: <20241015-auspicious-maize-avocet-09d8fe@lemur>
References: <61aba19e-6496-4273-8427-a228af23e2e3@linux.ibm.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <61aba19e-6496-4273-8427-a228af23e2e3@linux.ibm.com>

On Mon, Oct 14, 2024 at 09:35:28AM GMT, Madhavan Srinivasan wrote:
> Hi,
> 
> I have exported and attached my pub key to this mail
> as mentioned here 

Hello:

Your key is already in the keyring -- it was added when you submitted your
kernel account request.

Best regards,
-K
